#
# Cookbook:: my_cookbook
# Recipe:: dockerhost
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
ENV['MY_PROXY_URL']='http://172.27.65.37:8080/'
ENV['HTTP_PROXY']='http://172.27.65.37:8080/'
ENV['HTTPS_PROXY']='http://172.27.65.37:8080/'
ENV['FTP_PROXY']='http://172.27.65.37:8080/'
ENV['http_proxy']='http://172.27.65.37:8080/'
ENV['https_proxy']='http://172.27.65.37:8080/'
ENV['ftp_proxy']='http://172.27.65.37:8080/'
ENV['no_proxy']='localhost,127.0.0.0/8,127.0.1.1,127.0.1.1*,panchefserver000.digicelgroup.local,panchefserver000'
ENV['EDITOR']='vi'
#
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin cloud_transformation"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'cloud_transformation']
#
include_recipe 'sudo'
