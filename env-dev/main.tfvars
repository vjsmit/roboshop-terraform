env = "dev"

tags = {
  company_name = "ABC Tech"
  business = "ecommerce"
  business_unit = "retail"
  cost_center = "322"
  project_name = "roboshop"
}

vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
    subnets = {
      web = { cidr_block = [ "10.0.0.0/24", "10.0.1.0/24" ] }
      app = { cidr_block = [ "10.0.2.0/24", "10.0.3.0/24" ] }
      db = { cidr_block = [ "10.0.4.0/24", "10.0.5.0/24" ] }
      public = { cidr_block = [ "10.0.6.0/24", "10.0.7.0/24" ] }
    }
  }
}

default_vpc_id = "vpc-0b1fbe0ea97949810"
default_vpc_rt = "rtb-02e7a07c42e938f89"
allow_ssh_cidr = [ "172.31.82.154/32" ]
zone_id = "Z0478111B3O54DLF4LSS"
kms_key_id = "4232fc03-9621-481b-83e2-a4f64d527d7a"
kms_key_arn = "arn:aws:kms:us-east-1:434623354977:key/4232fc03-9621-481b-83e2-a4f64d527d7a"

rabbitmq = {
  main = {
    instance_type = "t3.small"
    component = "rabbitmq"
  }
}

rds = {
  main = {
    component               = "rds"
    engine                  = "aurora-mysql"
    engine_version          = "5.7.mysql_aurora.2.11.3"
    db_name                 = "dummy"
    instance_count          = 1
    instance_class          = "db.t3.small"
  }
}

documentdb = {
  main = {
    component               = "docdb"
  }
}