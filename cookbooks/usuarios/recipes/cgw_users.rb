#
# Cookbook:: usuarios
# Recipe:: cgw_users
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'cgw' do
  action [:create]
  data_bag 'cgw'
end
