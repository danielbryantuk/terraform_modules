variable "credentials_file" {
}

variable "project_name" {
}

variable "region" {
  default = "us-central1"
}

module "module-a" {
  source = "./modules/module-a"
  name = "module-a"
}

module "module-b" {
  source = "./modules/module-b"
  name = "module-b"
}

provider "google" {
  credentials = "${file(var.credentials_file)}"
  project     = "${var.project_name}"
  region      = "${var.region}"
}
