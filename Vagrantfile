# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
  end

  config.vm.define "vbox-base" do |config|

    config.vm.box = "bento/centos-7.1"

    config.vm.provision "ansible" do |ansible|
      ansible.inventory_path = "hosts"
      ansible.playbook = "site.yml"
      ansible.sudo = true
    end

  end

  config.vm.define "vbox", primary: true do |config|

    config.vm.box = "vbox"
    config.vm.box_url = "https://rawgit.com/lig/ansible-vagrant-talk/master/vbox.json"

  end

  config.vm.network "private_network", ip: "192.168.1.2"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/deploy", mount_options: ["dmode=775,fmode=664"]

end
