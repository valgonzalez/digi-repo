#
# Cookbook:: usuarios
# Recipe:: dba_admin
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'dba_admin' do
  action [:create]
  data_bag 'dba_admin'
end
