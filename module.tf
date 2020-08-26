module "db" {
    source = "./class7/cluster"
    region = "us-east-2"
    subnet_ids = [
    "subnet-0efea218c8b2d5304", 
    "subnet-073c59aac02c80ede", 
    "subnet-0ee36b794915689fa"
    ]
    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "aurora"
    engine_version = "5.6.10a"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
}
