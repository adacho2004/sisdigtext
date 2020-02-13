provider "ibm" {
  generation = 1
}

data "ibm_resource_group" "group" {
  name = "infra_prottype"
}

resource "ibm_resource_instance" "resource_instance" {
  name              = "${var.service_instance_name}"
  service           = "sysdig_monitor"
  plan              = "graduated-tier"
  location          = "jp_tok"
  resource_group_id = "${data.ibm_resource_group.group.id}"
  tags              = ["${var.tag1}", "${var.tag2}"]

  //User can increase timeouts 
  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}


