#
# Cookbook:: accesos
# Recipe:: pbx
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin pbx"
#
include_recipe 'openssh'

