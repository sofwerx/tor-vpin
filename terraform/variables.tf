variable Project {
  description = "Project name"
  default = "dfpk"
}

variable Lifecycle {
  description = "Lifecycle (dev, qa, prod)"
  default = "dev"
}

variable aws_access_key_id {
  description = "AWS Access Key"
}

variable aws_secret_access_key {
  description = "AWS Secret Key"
}

variable aws_region {
  description = "AWS Region"
  default = "us-east-1"
}

variable vpc_network_cidr {
  description = "CIDR block for VPC"
  default = "10.0.0.0/16"
}

variable vpc_subnet_network_bits {
  description = "Number of bits in addition to vpc_network_cidr used for network part of subnet mask"
  default = 6 
}

variable vpc_subnet_count {
  description = "Number of subnets to create"
  default = 3
}

variable "aws_availability_zones" {
  description = "Comma separated list of availability zones to use by region"
  default = {
    "us-east-1" = "us-east-1a,us-east-1b,us-east-1c",
    "us-west-1" = "us-west-1a,us-west-1b,us-west-1c"
  }
}

# From: http://cloud-images.ubuntu.com/locator/ec2/
# Search for: bionic hvm:ebs-ssd
# The following list generated by running `./utils/ubuntu-bionic-ami-list.sh`

variable "ami" {
    description = "These are HVM EBS-SSD instance types. If you change these, make sure it is compatible with your chosen instance type, not all AMIs allow all instance types"
    default = {
	ap-northeast-1-ubuntu-18.04 = "ami-7edeaa93"
	ap-northeast-2-ubuntu-18.04 = "ami-9d6fd8f3"
	ap-northeast-3-ubuntu-18.04 = "ami-51636a2c"
	ap-south-1-ubuntu-18.04 = "ami-5b093b34"
	ap-southeast-1-ubuntu-18.04 = "ami-9f743275"
	ap-southeast-2-ubuntu-18.04 = "ami-65a60007"
	ca-central-1-ubuntu-18.04 = "ami-53bf3237"
	cn-north-1-ubuntu-18.04 = "ami-a001dfcd"
	cn-northwest-1-ubuntu-18.04 = "ami-e1bbaf83"
	eu-central-1-ubuntu-18.04 = "ami-565351bd"
	eu-west-1-ubuntu-18.04 = "ami-79c4de93"
	eu-west-2-ubuntu-18.04 = "ami-7cde341b"
	eu-west-3-ubuntu-18.04 = "ami-1a73c367"
	sa-east-1-ubuntu-18.04 = "ami-36e3c25a"
	us-east-1-ubuntu-18.04 = "ami-b04847cf"
	us-east-2-ubuntu-18.04 = "ami-caffc5af"
	us-gov-west-1-ubuntu-18.04 = "ami-e12ebc80"
	us-west-1-ubuntu-18.04 = "ami-37648954"
	us-west-2-ubuntu-18.04 = "ami-d7f1a8af"
    }
}

variable aws_instance_count {
    description = "The number of instances to create"
    default = "1"
}

variable aws_instance_type {
    description = "AWS instance type to use"
    default = "t2.nano"
}

variable linux_distro_name {
    description = "AWS instance linux distro name to use"
    default = "ubuntu"
}

variable linux_distro_version {
    description = "AWS instance linux distro version to use"
    default = "18.04"
}

variable ssh_key_path {
    description = "Path to ssh public key file"
    default = "sofwerx.pub"
}

variable ebs_root_volume_size {
    description = "EBS Root Volume Size"
    default = "20"
}

variable tor_da_count {
    description = "Number of DA nodes"
    default = "2"
}

variable tor_relay_count {
    description = "Number of RELAY nodes"
    default = "3"
}

variable tor_bridge_count {
    description = "Number of BRIDGE nodes"
    default = "1"
}

variable tor_exit_count {
    description = "Number of EXIT nodes"
    default = "1"
}

variable s3_bucket {
    description = "s3 bucket to use for service discovery"
    default = "sofwerx-tor-dfpk"
}

variable tor_daport {
    description = "TOR Directory Authority Port"
    default = "17000"
}

variable tor_orport {
    description = "TOR Onion Router Port"
    default = "19030"
}
