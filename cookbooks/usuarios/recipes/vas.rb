#
# Cookbook:: usuarios
# Recipe:: vas
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'vas' do
  action [:create]
  data_bag 'vas'
end
