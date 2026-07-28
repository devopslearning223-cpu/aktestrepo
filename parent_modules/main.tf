variable "rgs" {}
variable "vnets" {}
variable "subnets" {}
variable "public_ips" {}
variable "vms" {}
module "resource_groups" {
  source = "../child_modules/resource_groups"
  rgs    = var.rgs
}
module "virtual_networks" {
  depends_on = [module.resource_groups]
  source     = "../child_modules/virtual_network"
  vnets      = var.vnets
}
module "subnets" {
  depends_on = [module.virtual_networks]
  source     = "../child_modules/subnets"
  subnets    = var.subnets
}
module "public_ips" {
  depends_on = [module.resource_groups]
  source     = "../child_modules/Public_IP"
  public_ips = var.public_ips
}
module "virtual_machine" {
  depends_on = [module.subnets, module.public_ips]
  source     = "../child_modules/Virtual_Machine"
  vms        = var.vms
}
    