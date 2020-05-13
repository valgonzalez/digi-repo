#
# Cookbook:: my_cookbook
# Recipe:: panbigdata001
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'sudo', 'admin']
#
include_recipe 'sudo'
#
#users_manage 'panbigdata001' do
#  action [:nothing]
#  data_bag 'panbigdata001'
#end
#
user 'admin01' do
  shell '/bin/false'
  action 'lock'
end
#
user 'panitops' do
  shell '/bin/bash'
  action 'modify'
end
#
include_recipe 'users'
