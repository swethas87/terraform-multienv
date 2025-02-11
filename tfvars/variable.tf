variable "instance_names" {
  type = map(any)

}
variable "environment" {

}

variable "common_tags" {
  default = {
    Project   = "Expense"
    Terraform = "true"
  }
}

variable "domain_name" {
  default = "niksantechnologies.com"
}

variable "zone_id" {
  default = "Z06680453K4LKZY84VQIS"
}
