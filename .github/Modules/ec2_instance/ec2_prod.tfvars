name = "app-server-prod"
environment = "prod"
ami_id = "ami-0123456789abcdef0"
instance_type = "t3.medium"
key_name = "mykey"
subnet_id = ""
security_group_ids = []
associate_public_ip = false
volume_size = 32
volume_type = "gp3"
iam_instance_profile = ""
user_data = ""
tags = {
  Owner = "platform"
  Project = "terraform-practice"
}
