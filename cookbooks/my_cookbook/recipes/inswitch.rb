#
# Cookbook:: my_cookbook
# Recipe:: inswitch
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin inswitch"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'inswitch', 'jenkins']
#
include_recipe 'sudo'
#
users_manage 'inswitch' do
  action [:create]
  data_bag 'inswitch'
end
#
include_recipe 'users'
