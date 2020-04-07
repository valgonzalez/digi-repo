#
# Cookbook:: usuarios
# Recipe:: panidiroftp
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#
users_manage 'panidiroftp' do
  action [:create]
  data_bag 'panidiroftp'
end
