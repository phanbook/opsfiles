# -*- mode: ruby -*-
# vi: set ft=ruby :
$setupDocker = <<SCRIPT
# Stop and remove any existing containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)

# Build containers from Dockerfiles


# Run and link the containers


SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
#Check if you have the good Vagrant version to use docker provider...
Vagrant.require_version ">= 1.6.0"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.synced_folder "../", "/var/www/phanbook", \
      :create         => true, \
      :owner          => 'vagrant', \
      :group          => 'vagrant', \
      :mount_options  => ['dmode=777,fmode=777']
    config.vm.provider "virtualbox" do |vb|
        vb.customize [
          'modifyvm', :id,
          '--memory', '1024',
          '--cpus', 2,
          '--name', 'phanbook',
        ]
    end
    # Ubuntu box
    config.vm.define "ubuntu" do |web|
        web.vm.box = "ubuntu/trusty64"
        web.vm.network :private_network, ip: "192.168.33.34"
        web.vm.provision "shell", path: "scripts/config.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/base.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/mysql.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/nginx.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/php.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/phalcon.sh"
        web.vm.provision "shell", path: "scripts/ubuntu/elastic.sh"
        web.vm.provision "shell", path: "scripts/app.sh"
    end
end
