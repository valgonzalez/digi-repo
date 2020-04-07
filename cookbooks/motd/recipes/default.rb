#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end
