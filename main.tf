variable "google_project" {}
variable "google_region" {}

variable "trigger" {}

provider "google" {
  project = "${var.google_project}"
  region  = "${var.google_region}"
}

data "google_client_config" "current" {}
data "google_compute_zones" "all" {}

resource "google_storage_bucket" "reprobucket" {
  name = "${data.google_client_config.current.project}-repro-1046"
}

resource "google_storage_bucket_object" "disk_image" {
  name   = "image-${var.trigger}.tar.gz"
  source = "image.tar.gz"
  bucket = "${google_storage_bucket.reprobucket.name}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_image" "image" {
  name = "image-${var.trigger}"

  raw_disk {
    source = "https://storage.googleapis.com/${google_storage_bucket_object.disk_image.bucket}/${google_storage_bucket_object.disk_image.name}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_disk" "disk" {
  count = 3
  name  = "disk-${var.trigger}"
  type  = "pd-ssd"

  zone  = "${data.google_compute_zones.all.names[count.index]}"
  image = "${google_compute_image.image.self_link}"
  size  = "1"

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_instance_template" "template" {
  count        = 3
  machine_type = "g1-small"

  disk {
    boot        = true
    source      = "${google_compute_disk.disk.*.name[count.index]}"
    mode        = "READ_ONLY"
    auto_delete = false
  }

  network_interface {
    network = "default"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_instance_group_manager" "manager" {
  count              = 3
  name               = "manager-${count.index+1}"
  base_instance_name = "instance"

  instance_template = "${google_compute_instance_template.template.*.self_link[count.index]}"

  zone = "${data.google_compute_zones.all.names[count.index]}"

  target_size = 2

  # lifecycle {
  #   create_before_destroy = true
  # }
}
