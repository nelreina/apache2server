# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "public_network"
  config.vm.network "private_network", ip: "111.111.11.10"
  config.vm.network "forwarded_port", guest: 80, host: 8080


  config.vm.provision "chef_solo" do |chef| 
    chef.cookbooks_path = ["/Users/nelsonreina/.chef/cookbooks" , "cookbooks"] 
    chef.add_recipe "apache2" 
    chef.json = { :apache => { :default_site_enabled => true } }
    chef.add_recipe "php" 
    chef.add_recipe "apache2::mod_php5" 
    chef.add_recipe "nrei1" 
    chef.add_recipe "composer" 
  end 




end
