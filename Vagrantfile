# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.network "forwarded_port" , guest:8000, host:8081
  config.vm.box = "precise64"
  config.vm.box_url = "https://vagrantcloud.com/hashicorp/boxes/precise64/versions/1.1.0/providers/virtualbox.box"
  config.vm.define "splunk7-box" do |splunk|
    splunk.vm.hostname = "splunk"
    splunk.vm.provision "shell", path: "install.sh"
    splunk.vm.provider "virtualbox" do |v|
                  v.memory = 4096
                  v.cpus = 2
              end
      end
end
