#
# Cookbook:: paquetes
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
httpd_service 'default' do
  action [:create, :start]
end
