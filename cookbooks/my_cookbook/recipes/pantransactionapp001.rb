#
# Cookbook:: my_cookbook
# Recipe:: pantransactionapp001
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin transaction cloud_transformation"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'transaction', 'cloud_transformation']
#
include_recipe 'sudo'
#
users_manage 'transaction' do
  data_bag 'transaction'
end
#
include_recipe 'users'
