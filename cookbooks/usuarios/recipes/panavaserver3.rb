#
# Cookbook:: usuarios
# Recipe:: panavaserver3
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'panavaserver3' do
  action [:create]
  data_bag 'panavaserver3'
end
