# -*- mode: ruby -*-
# vi: set ft=ruby :

WORKSTATION_NAME = 'cloud-1-workstation'
WORKSTATION_IP = '192.168.56.110'
SERVER_NAME = 'cloud-1'
SERVER_IP = '192.168.56.111'

MEM = 4096
CPU = 4
BOX = "debian/bookworm64"

Vagrant.configure("2") do |config|
  # Generic settings
  config.vm.box = BOX
  config.vm.boot_timeout = 1200
  config.vm.provider "virtualbox" do |vb|
    vb.memory = MEM
    vb.cpus = CPU
   end

  # Workstation
  config.vm.define WORKSTATION_NAME do |w|
    w.vm.hostname = WORKSTATION_NAME
    w.vm.network "private_network", ip: WORKSTATION_IP
    w.vm.provider "virtualbox" do |vb|
      vb.name = WORKSTATION_NAME
    end
    w.vm.provision "shell", path: "scripts/workstation.sh", env: {
      SERVER_NAME:SERVER_NAME,
      SERVER_IP:SERVER_IP,
      WORKSTATION_NAME:WORKSTATION_NAME,
      WORKSTATION_IP:WORKSTATION_IP
    }
  end

  # Server
  config.vm.define SERVER_NAME do |server|
    server.vm.hostname = SERVER_NAME
    server.vm.network "private_network", ip: SERVER_IP
    server.vm.provider "virtualbox" do |vb|
      vb.name = SERVER_NAME
    end
  end
end
