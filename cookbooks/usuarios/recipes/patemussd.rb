#
# Cookbook:: usuarios
# Recipe:: patemussd
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'patemussd' do
  action [:create]
  data_bag 'patemussd'
end
