resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  monitoring = true

  ebs_optimized = true
  root_block_device {
  encrypted     = true
  }

   metadata_options {
      
      http_endpoint = "disabled"
      http_tokens   = "optional"
 }
  




  tags = {
    Name = "HelloWorld"
  }
}
