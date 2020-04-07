#
# Cookbook:: usuarios
# Recipe:: linux_admin
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'linux_admin' do
  action [:create]
  data_bag 'linux_admin'
end
