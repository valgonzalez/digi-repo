#
# Cookbook:: my_cookbook
# Recipe:: berrysys
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#
users_manage 'berrysys' do
  action [:create]
  data_bag 'berrysys'
end
#
include_recipe 'users'
