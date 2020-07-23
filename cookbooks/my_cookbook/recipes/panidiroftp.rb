#
# Cookbook:: my_cookbook
# Recipe:: panidiroftp
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin panidiroftp cloud_transformation"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'be031793', 'cloud_transformation']
#
include_recipe 'sudo'
#
#
users_manage 'panidiroftp' do
  data_bag 'panidiroftp'
end
#
include_recipe 'users'
