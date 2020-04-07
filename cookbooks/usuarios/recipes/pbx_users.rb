#
# Cookbook:: usuarios
# Recipe:: pbx_users
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'pbx' do
  action [:create]
  data_bag 'pbx_servers'
end
