#
# Cookbook:: my_cookbook
# Recipe:: palv0001
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin palv0001"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'palv0001']
#
include_recipe 'sudo'
#
users_manage 'palv0001' do
  action [:create]
  data_bag 'palv0001'
end
#
include_recipe 'users'
