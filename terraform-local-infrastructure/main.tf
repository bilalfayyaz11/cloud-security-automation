terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "vagrantfile" {
  filename = "${path.module}/Vagrantfile"

  content = <<-EOT
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.hostname = "terraform-local-vm"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "terraform-local-vm"
    vb.memory = 1024
    vb.cpus = 2
  end

  config.vm.network "private_network", ip: "192.168.56.20"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update -y
    sudo apt-get install -y apache2
    sudo systemctl enable apache2
    sudo systemctl start apache2
    echo "Terraform-managed local VM running Apache" | sudo tee /var/www/html/index.html
  SHELL
end
EOT
}
