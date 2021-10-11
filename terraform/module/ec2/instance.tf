resource "aws_instance" "demo"{
  count = "${var.ec2_count}"
  ami = "${var.ami_id}"
  instance_type = "${var.ec2_type}"
  key_name = "${var.key_name_id}"
  security_groups = [ "${var.sg_name}" ]


  tags = {
    Name = "demo_ec2_no_${count.index + 1}"

  }

}
