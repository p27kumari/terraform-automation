name = "app-server-dev"
environment = "dev"
ami_id = "ami-0123456789abcdef0"
instance_type = "t3.micro"
key_name = "mykey"
subnet_id = ""
security_group_ids = []
associate_public_ip = true
volume_size = 8
volume_type = "gp3"
iam_instance_profile = ""
user_data = ""
tags = {
  Owner = "devops"
  Project = "terraform-practice"
}
