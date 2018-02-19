```
➜  repro-terraform-provider-google-issue-1046 git:(master) ✗ terraform apply -auto-approve

-- apply --
var.trigger
  Enter a value: bbb

data.google_compute_zones.all: Refreshing state...
data.google_client_config.current: Refreshing state...
google_storage_bucket.reprobucket: Refreshing state... (ID: my-project-repro-1046)
google_storage_bucket_object.disk_image: Refreshing state... (ID: my-project-repro-1046-image-eee.tar.gz)
google_compute_image.image: Refreshing state... (ID: image-eee)
google_compute_disk.disk[0]: Refreshing state... (ID: disk-eee)
google_compute_disk.disk[2]: Refreshing state... (ID: disk-eee)
google_compute_disk.disk[1]: Refreshing state... (ID: disk-eee)
google_compute_instance_template.template[2]: Refreshing state... (ID: terraform-20180219120932445400000003)
google_compute_instance_template.template[0]: Refreshing state... (ID: terraform-20180219120932444500000002)
google_compute_instance_template.template[1]: Refreshing state... (ID: terraform-20180219120932442400000001)
google_compute_instance_group_manager.manager[2]: Refreshing state... (ID: manager-3)
google_compute_instance_group_manager.manager[1]: Refreshing state... (ID: manager-2)
google_compute_instance_group_manager.manager[0]: Refreshing state... (ID: manager-1)
google_storage_bucket_object.disk_image: Creating...
  bucket:         "" => "my-project-repro-1046"
  content_type:   "" => "<computed>"
  crc32c:         "" => "<computed>"
  detect_md5hash: "" => "different hash"
  md5hash:        "" => "<computed>"
  name:           "" => "image-bbb.tar.gz"
  source:         "" => "image.tar.gz"
  storage_class:  "" => "<computed>"
google_storage_bucket_object.disk_image: Creation complete after 1s (ID: my-project-repro-1046-image-bbb.tar.gz)
google_compute_image.image: Creating...
  label_fingerprint:         "" => "<computed>"
  name:                      "" => "image-bbb"
  project:                   "" => "<computed>"
  raw_disk.#:                "" => "1"
  raw_disk.0.container_type: "" => "TAR"
  raw_disk.0.source:         "" => "https://storage.googleapis.com/my-project-repro-1046/image-bbb.tar.gz"
  self_link:                 "" => "<computed>"
google_compute_image.image: Still creating... (10s elapsed)
google_compute_image.image: Still creating... (20s elapsed)
google_compute_image.image: Still creating... (30s elapsed)
google_compute_image.image: Creation complete after 38s (ID: image-bbb)
google_compute_disk.disk[0]: Creating...
  disk_encryption_key_sha256: "" => "<computed>"
  image:                      "" => "https://www.googleapis.com/compute/v1/projects/my-project/global/images/image-bbb"
  label_fingerprint:          "" => "<computed>"
  name:                       "" => "disk-bbb"
  project:                    "" => "<computed>"
  self_link:                  "" => "<computed>"
  size:                       "" => "1"
  type:                       "" => "pd-ssd"
  users.#:                    "" => "<computed>"
  zone:                       "" => "europe-west1-b"
google_compute_disk.disk[1]: Creating...
  disk_encryption_key_sha256: "" => "<computed>"
  image:                      "" => "https://www.googleapis.com/compute/v1/projects/my-project/global/images/image-bbb"
  label_fingerprint:          "" => "<computed>"
  name:                       "" => "disk-bbb"
  project:                    "" => "<computed>"
  self_link:                  "" => "<computed>"
  size:                       "" => "1"
  type:                       "" => "pd-ssd"
  users.#:                    "" => "<computed>"
  zone:                       "" => "europe-west1-c"
google_compute_disk.disk[2]: Creating...
  disk_encryption_key_sha256: "" => "<computed>"
  image:                      "" => "https://www.googleapis.com/compute/v1/projects/my-project/global/images/image-bbb"
  label_fingerprint:          "" => "<computed>"
  name:                       "" => "disk-bbb"
  project:                    "" => "<computed>"
  self_link:                  "" => "<computed>"
  size:                       "" => "1"
  type:                       "" => "pd-ssd"
  users.#:                    "" => "<computed>"
  zone:                       "" => "europe-west1-d"
google_compute_disk.disk.0: Still creating... (10s elapsed)
google_compute_disk.disk.2: Still creating... (10s elapsed)
google_compute_disk.disk.1: Still creating... (10s elapsed)
google_compute_disk.disk[2]: Creation complete after 11s (ID: disk-bbb)
google_compute_disk.disk[1]: Creation complete after 11s (ID: disk-bbb)
google_compute_disk.disk[0]: Creation complete after 11s (ID: disk-bbb)
google_compute_instance_template.template[0]: Creating...
  can_ip_forward:                         "" => "false"
  disk.#:                                 "" => "1"
  disk.0.auto_delete:                     "" => "false"
  disk.0.boot:                            "" => "true"
  disk.0.device_name:                     "" => "<computed>"
  disk.0.disk_type:                       "" => "<computed>"
  disk.0.interface:                       "" => "<computed>"
  disk.0.mode:                            "" => "READ_ONLY"
  disk.0.source:                          "" => "disk-bbb"
  disk.0.type:                            "" => "<computed>"
  machine_type:                           "" => "g1-small"
  metadata_fingerprint:                   "" => "<computed>"
  name:                                   "" => "<computed>"
  network_interface.#:                    "" => "1"
  network_interface.0.address:            "" => "<computed>"
  network_interface.0.network:            "" => "default"
  network_interface.0.network_ip:         "" => "<computed>"
  network_interface.0.subnetwork_project: "" => "<computed>"
  project:                                "" => "<computed>"
  region:                                 "" => "<computed>"
  scheduling.#:                           "" => "<computed>"
  self_link:                              "" => "<computed>"
  tags_fingerprint:                       "" => "<computed>"
google_compute_instance_template.template[2]: Creating...
  can_ip_forward:                         "" => "false"
  disk.#:                                 "" => "1"
  disk.0.auto_delete:                     "" => "false"
  disk.0.boot:                            "" => "true"
  disk.0.device_name:                     "" => "<computed>"
  disk.0.disk_type:                       "" => "<computed>"
  disk.0.interface:                       "" => "<computed>"
  disk.0.mode:                            "" => "READ_ONLY"
  disk.0.source:                          "" => "disk-bbb"
  disk.0.type:                            "" => "<computed>"
  machine_type:                           "" => "g1-small"
  metadata_fingerprint:                   "" => "<computed>"
  name:                                   "" => "<computed>"
  network_interface.#:                    "" => "1"
  network_interface.0.address:            "" => "<computed>"
  network_interface.0.network:            "" => "default"
  network_interface.0.network_ip:         "" => "<computed>"
  network_interface.0.subnetwork_project: "" => "<computed>"
  project:                                "" => "<computed>"
  region:                                 "" => "<computed>"
  scheduling.#:                           "" => "<computed>"
  self_link:                              "" => "<computed>"
  tags_fingerprint:                       "" => "<computed>"
google_compute_instance_template.template[1]: Creating...
  can_ip_forward:                         "" => "false"
  disk.#:                                 "" => "1"
  disk.0.auto_delete:                     "" => "false"
  disk.0.boot:                            "" => "true"
  disk.0.device_name:                     "" => "<computed>"
  disk.0.disk_type:                       "" => "<computed>"
  disk.0.interface:                       "" => "<computed>"
  disk.0.mode:                            "" => "READ_ONLY"
  disk.0.source:                          "" => "disk-bbb"
  disk.0.type:                            "" => "<computed>"
  machine_type:                           "" => "g1-small"
  metadata_fingerprint:                   "" => "<computed>"
  name:                                   "" => "<computed>"
  network_interface.#:                    "" => "1"
  network_interface.0.address:            "" => "<computed>"
  network_interface.0.network:            "" => "default"
  network_interface.0.network_ip:         "" => "<computed>"
  network_interface.0.subnetwork_project: "" => "<computed>"
  project:                                "" => "<computed>"
  region:                                 "" => "<computed>"
  scheduling.#:                           "" => "<computed>"
  self_link:                              "" => "<computed>"
  tags_fingerprint:                       "" => "<computed>"
google_compute_instance_template.template.1: Still creating... (10s elapsed)
google_compute_instance_template.template.0: Still creating... (10s elapsed)
google_compute_instance_template.template.2: Still creating... (10s elapsed)
google_compute_instance_template.template[0]: Creation complete after 12s (ID: terraform-20180219121950340300000002)
google_compute_instance_template.template[2]: Creation complete after 12s (ID: terraform-20180219121950340300000001)
google_compute_instance_template.template[1]: Creation complete after 12s (ID: terraform-20180219121950340500000003)
google_compute_instance_group_manager.manager[1]: Modifying... (ID: manager-2)
  instance_template: "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219120932442400000001" => "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219121950340500000003"
google_compute_instance_group_manager.manager[0]: Modifying... (ID: manager-1)
  instance_template: "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219120932444500000002" => "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219121950340300000002"
google_compute_instance_group_manager.manager[2]: Modifying... (ID: manager-3)
  instance_template: "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219120932445400000003" => "https://www.googleapis.com/compute/v1/projects/my-project/global/instanceTemplates/terraform-20180219121950340300000001"
google_compute_instance_group_manager.manager.2: Still modifying... (ID: manager-3, 10s elapsed)
google_compute_instance_group_manager.manager.0: Still modifying... (ID: manager-1, 10s elapsed)
google_compute_instance_group_manager.manager.1: Still modifying... (ID: manager-2, 10s elapsed)
google_compute_instance_group_manager.manager.2: Still modifying... (ID: manager-3, 20s elapsed)
google_compute_instance_group_manager.manager.0: Still modifying... (ID: manager-1, 20s elapsed)
google_compute_instance_group_manager.manager.1: Still modifying... (ID: manager-2, 20s elapsed)
google_compute_instance_group_manager.manager[1]: Modifications complete after 23s (ID: manager-2)
google_compute_instance_group_manager.manager[0]: Modifications complete after 23s (ID: manager-1)
google_compute_instance_group_manager.manager[2]: Modifications complete after 23s (ID: manager-3)
google_compute_instance_template.template.deposed[0]: Destroying... (ID: terraform-20180219120932444500000002)
google_compute_instance_template.template.deposed[1]: Destroying... (ID: terraform-20180219120932442400000001)
google_compute_instance_template.template.deposed[2]: Destroying... (ID: terraform-20180219120932445400000003)
google_compute_instance_template.template.0 (deposed #0): Still destroying... (ID: terraform-20180219120932444500000002, 10s elapsed)
google_compute_instance_template.template.1 (deposed #0): Still destroying... (ID: terraform-20180219120932442400000001, 10s elapsed)
google_compute_instance_template.template.2 (deposed #0): Still destroying... (ID: terraform-20180219120932445400000003, 10s elapsed)
google_compute_instance_template.template.deposed[1]: Destruction complete after 11s
google_compute_instance_template.template.deposed[0]: Destruction complete after 11s
google_compute_instance_template.template.deposed[2]: Destruction complete after 11s
google_compute_disk.disk.deposed[1]: Destroying... (ID: disk-a)
google_compute_disk.disk.deposed[1]: Destroying... (ID: disk-eee)
google_compute_disk.disk.deposed[2]: Destroying... (ID: disk-eee)
google_compute_disk.disk.deposed[2]: Destroying... (ID: disk-a)
google_compute_disk.disk.deposed[0]: Destroying... (ID: disk-eee)
google_compute_disk.disk.deposed[0]: Destroying... (ID: disk-a)
google_compute_disk.disk.1 (deposed #0): Still destroying... (ID: disk-a, 10s elapsed)
google_compute_disk.disk.1 (deposed #1): Still destroying... (ID: disk-eee, 10s elapsed)
google_compute_disk.disk.2 (deposed #0): Still destroying... (ID: disk-a, 10s elapsed)
google_compute_disk.disk.2 (deposed #1): Still destroying... (ID: disk-eee, 10s elapsed)
google_compute_disk.disk.0 (deposed #0): Still destroying... (ID: disk-a, 10s elapsed)
google_compute_disk.disk.0 (deposed #1): Still destroying... (ID: disk-eee, 10s elapsed)
google_compute_disk.disk.deposed[2]: Destruction complete after 11s
google_compute_disk.disk.deposed[1]: Destruction complete after 11s
google_compute_disk.disk.deposed[0]: Destruction complete after 11s
google_compute_disk.disk.deposed[1]: Destruction complete after 11s
google_compute_disk.disk.deposed[2]: Destruction complete after 11s

Error: Error applying plan:

1 error(s) occurred:

* google_compute_disk.disk[0] (destroy): 1 error(s) occurred:

* google_compute_disk.disk.0 (deposed #0): 1 error(s) occurred:

* google_compute_disk.disk.0 (deposed #0): The resource 'projects/my-project/zones/europe-west1-b/instances/instance-t28h' was not found


Terraform does not automatically rollback in the face of errors.
Instead, your Terraform state file has been partially updated with
any resources that successfully completed. Please address the error
above and apply again to incrementally change your infrastructure.


➜  repro-terraform-provider-google-issue-1046 git:(master) ✗ terraform apply -auto-approve

-- apply --
var.trigger
  Enter a value: bbb

data.google_compute_zones.all: Refreshing state...
data.google_client_config.current: Refreshing state...
google_storage_bucket.reprobucket: Refreshing state... (ID: my-project-repro-1046)
google_storage_bucket_object.disk_image: Refreshing state... (ID: my-project-repro-1046-image-bbb.tar.gz)
google_compute_image.image: Refreshing state... (ID: image-bbb)
google_compute_disk.disk[0]: Refreshing state... (ID: disk-bbb)
google_compute_disk.disk[1]: Refreshing state... (ID: disk-bbb)
google_compute_disk.disk[2]: Refreshing state... (ID: disk-bbb)
google_compute_instance_template.template[2]: Refreshing state... (ID: terraform-20180219121950340300000001)
google_compute_instance_template.template[1]: Refreshing state... (ID: terraform-20180219121950340500000003)
google_compute_instance_template.template[0]: Refreshing state... (ID: terraform-20180219121950340300000002)
google_compute_instance_group_manager.manager[2]: Refreshing state... (ID: manager-3)
google_compute_instance_group_manager.manager[0]: Refreshing state... (ID: manager-1)
google_compute_instance_group_manager.manager[1]: Refreshing state... (ID: manager-2)
google_compute_disk.disk.deposed[0]: Destroying... (ID: disk-a)
google_compute_disk.disk.0 (deposed #0): Still destroying... (ID: disk-a, 10s elapsed)
google_compute_disk.disk.deposed[0]: Destruction complete after 11s
google_compute_image.image.deposed: Destroying... (ID: image-a)
google_compute_image.image.deposed: Destroying... (ID: image-eee)
google_compute_image.image (deposed #0): Still destroying... (ID: image-a, 10s elapsed)
google_compute_image.image (deposed #1): Still destroying... (ID: image-eee, 10s elapsed)
google_compute_image.image.deposed: Destruction complete after 11s
google_compute_image.image.deposed: Destruction complete after 11s
google_storage_bucket_object.disk_image.deposed: Destroying... (ID: my-project-repro-1046-image-a.tar.gz)
google_storage_bucket_object.disk_image.deposed: Destroying... (ID: my-project-repro-1046-image-eee.tar.gz)
google_storage_bucket_object.disk_image.deposed: Destruction complete after 1s
google_storage_bucket_object.disk_image.deposed: Destruction complete after 1s

Apply complete! Resources: 0 added, 0 changed, 5 destroyed.
```
