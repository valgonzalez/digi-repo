#
# Cookbook:: my_cookbook
# Recipe:: pandpgw004
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "yes"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin root"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin']
#
include_recipe 'sudo'
