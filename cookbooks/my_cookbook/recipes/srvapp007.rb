#
# Cookbook:: my_cookbook
# Recipe:: srvapp007
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "itops sysadmin vas local grupo_jamaica berrysys"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['itops', 'sysadmin']
#
include_recipe 'sudo'
