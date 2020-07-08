#
# Cookbook:: usuarios
# Recipe:: hpe
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'hpe' do
#  action [:create]
  data_bag 'hpe'
end
