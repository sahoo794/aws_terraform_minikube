module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-2"
  cluster_name  = "roboshop"
  aws_instance_type = "t2.micro"
  # ~ --> home dir, you should have terraform.pub in your home
  ssh_public_key = "C:\Users\ADMIN\Minikube.pub" # replace with your public key name and path
  aws_subnet_id = "subnet-0036aa80db1fd6a4c" # any public subnet in any VPC, I am using default VPC subnet


  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}