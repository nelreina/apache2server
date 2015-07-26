#
# Cookbook Name:: nrei1
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe "apache2"
include_recipe "php"

template '/etc/apache2/sites-available/000-default.conf' do
  source 'default.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

template '/etc/apache2/apache2.conf' do
  source 'apache.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'apache2' do
  # supports :status => true, :restart => true, :reload => true
  action [:restart, :enable]
end
