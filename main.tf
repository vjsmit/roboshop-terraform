module "instances" {
  for_each  = var.components
  source    = "git::https://github.com/vjsmit/tf-module-app.git"
  component = each.key
  env       = var.env
  tags      = each.value["tags"]
}