#
# Cookbook:: accesos
# Recipe:: panidiroftp
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin panidiroftp"
#
include_recipe 'openssh'
