#
# Cookbook:: my_cookbook
# Recipe:: pandw-dmz
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin local cloud_transformation"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'cloud_transformation']
#
include_recipe 'sudo'
