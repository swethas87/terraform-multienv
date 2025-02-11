variable "instance_names" {
  type = map(any)
  default = {

    db-prod      = "t3.small"
    backend-prod = "t3.micro"
  frontend-prod = "t3.micro" }

}
variable "environment" {
  default = "Prod"
}
variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Prod"
    Terraform   = "true"
  }
}

variable "domain_name" {
  default = "niksantechnologies.com"
}

variable "zone_id" {
  default = "Z06680453K4LKZY84VQIS"
}
