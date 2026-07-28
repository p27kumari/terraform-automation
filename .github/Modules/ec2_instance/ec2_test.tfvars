name = "app-server-test"
environment = "test"
ami_id = "ami-0123456789abcdef0"
instance_type = "t3.small"
key_name = "mykey"
subnet_id = ""
security_group_ids = []
associate_public_ip = true
volume_size = 16
volume_type = "gp3"
iam_instance_profile = ""
user_data = ""
tags = {
  Owner = "qa"
  Project = "terraform-practice"
}
