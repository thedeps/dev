# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty64'
  config.vm.hostname = 'deps-dev-box'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: 'scripts/bootstrap.sh', keep_color: true

  config.vm.network :private_network, ip: "192.168.33.100"

  config.vm.synced_folder ".", "/home/vagrant/applications"

end