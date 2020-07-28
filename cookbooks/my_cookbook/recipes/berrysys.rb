#
# Cookbook:: my_cookbook
# Recipe:: berrysys
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#
users_manage 'berrysys' do
  data_bag 'berrysys'
end
#
include_recipe 'users'
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'cloud_transformation']
#
include_recipe 'sudo'
