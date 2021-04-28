# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ubuntu/focal64"

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  config.vm.network "forwarded_port", guest: 8181, host: 8181
  config.vm.provision "shell", path: "Boron-SR4-bootstrap.sh", privileged: false
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end
end
