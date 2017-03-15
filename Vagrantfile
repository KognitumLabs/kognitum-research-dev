# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.customize ["modifyvm", :id, "--cpus", 2]
  end

  #-----------------Box

  config.vm.box = "ubuntu/trusty64"

  #-----------------Provisions

  # Welcome
  config.vm.provision :shell, :path => "provision/welcome.sh"

  # install common stuffs
  config.vm.provision :shell, :inline => "apt-get -y update && apt-get -y upgrade"
  config.vm.provision :shell, :inline => "apt-get install --reinstall -y language-pack-en language-pack-pt"
  config.vm.provision :shell, :inline => "apt-get install -y curl vim htop build-essential liblapack-dev libblas-dev libjpeg8-dev"

  # Git
  config.vm.provision :shell, :path => "provision/git.sh"

  # Ruby
  config.vm.provision :shell, :path => "provision/rvm.sh", :args => "head"
  config.vm.provision :shell, :path => "provision/ruby.sh", :args => "2.3.1 bundler"

  # Python
  config.vm.provision :shell, :path => "provision/python.sh"

  # Prepare first time
  config.vm.provision :shell, :path => "provision/prepare_first_time.sh"

  #-----------------Network

  # Ipython
  config.vm.network :forwarded_port, guest: 8888, host: 8888
  
  end

