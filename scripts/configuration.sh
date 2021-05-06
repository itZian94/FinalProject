echo "Managing Terraform configuration"
sudo apt update && sudo apt upgrade -y
sudo apt install -y unzip wget
sudo wget https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
sudo unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
sudo rm terraform_*_linux_*.zip

echo "Preparing eksctl for Amazon cluster"
sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"| tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

echo "Setting up cluster API through kubectl"
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl 
