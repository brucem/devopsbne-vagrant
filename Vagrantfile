# See http://vagrantup.com/v1/docs/vagrantfile.html for more details

Vagrant::Config.run do |config|

  # Use the base box called "base"
  config.vm.box = "base"

  # If you don't have the base box "base" get it from the url
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  # Some ssh config
  config.ssh.timeout = 300
  config.ssh.max_tries = 300
  
  # Use host only networking http://vagrantup.com/v1/docs/host_only_networking.html
  #  and give the box the IP address 33.33.33.10
  config.vm.network :hostonly, "33.33.33.10"

  # Mount ./application as /var/www/application using NFS
  config.vm.share_folder("application", "/var/www/application", "application", :nfs => true)

  # Do an initial provision using the "shell" provisioner
  # This just does an "apt-get update"
  config.vm.provision :shell, :path => "bootstrap-ubuntu-vagrant.sh"

  # Provision using Puppet 
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "web.pp"
  end

end
