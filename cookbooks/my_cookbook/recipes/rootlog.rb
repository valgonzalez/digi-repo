#
# Cookbook:: my_cookbook
# Recipe:: rootlog
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
directory '/opt/digicel/scripts' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
#
#
cookbook_file '/opt/digicel/scripts/rootlog.ksh' do
  source 'comunes/rootlog.ksh'
  mode  '0755'
end
