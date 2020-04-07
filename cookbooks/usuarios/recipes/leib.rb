#
# Cookbook:: usuarios
# Recipe:: leib
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'leib' do
  action [:create]
  data_bag 'leib'
end
