#
# Cookbook:: my_cookbook
# Recipe:: panappscr001
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin panappscr001 www-data"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'be031793']
#
include_recipe 'sudo'
#
#
users_manage 'panappscr001' do
  action [:create]
  data_bag 'panappscr001'
end
#
include_recipe 'users'
