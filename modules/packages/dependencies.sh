#!/bin/bash
sudo apt-get update -y && sudo apt-get install jq -y
sleep 5
   echo    "----- ..................................................... -----"
   echo     "----- ...............   TERRAFORM   .................... -----"
   echo    "----- ..................................................... -----"
 if command -v terraform &> /dev/null
then
   echo "Terraform is installed on your system"
else
   echo "Terraform is not installed on your system"
   sudo wget https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_linux_amd64.zip
   sudo apt install zip -y
   sudo unzip terraform_0.14.8_linux_amd64.zip
   sudo mv terraform /usr/local/bin/
fi
   sleep 5
   echo    "----- ..................................................... -----"
   echo        "----- ...............   HELM   .................... -----"
   echo    "----- ..................................................... -----"
   if command -v helm &> /dev/null
then
   echo "Helm is installed on your system"
else
   echo "Helm is not installed on your system"
   HELM_VERSION="v3.13.3"
   sudo curl -# -LO "https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz"
   sudo tar -xzvf "helm-${HELM_VERSION}-linux-amd64.tar.gz"
   sudo mv linux-amd64/helm /usr/local/bin/helm
   sudo rm -rf "helm-${HELM_VERSION}-linux-amd64.tar.gz" && sudo rm -rf linux-amd64
   sleep 5
fi
   echo    "----- ..................................................... -----"
   echo       "----- ...............   KUBECTL   .................... -----"
   echo    "----- ..................................................... -----"
if command -v kubectl &> /dev/null
then
   echo "kubectl is installed on your system"
else
   echo "kubectl is not installed on your system"
   sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
   sudo chmod +x ./kubectl
   sudo mv ./kubectl /usr/local/bin/kubectl
fi
