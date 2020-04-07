#
# Cookbook:: my_cookbook
# Recipe:: panroambkp002
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['authorization']['sudo']['passwordless'] = false
#node.default['authorization']['sudo']['groups'] = ['linux_admin', 'panroambkp002']
node.default['authorization']['sudo']['groups'] = ['linux_admin']
#
include_recipe 'sudo'
#
users_manage 'panroambkp002' do
  action [:create]
  data_bag 'panroambkp002'
end
#
include_recipe 'users'
