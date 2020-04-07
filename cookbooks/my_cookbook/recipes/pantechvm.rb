#
# Cookbook:: my_cookbook
# Recipe:: pantechvm
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'pantechvm' do
  action [:create]
  data_bag 'pantechvm'
end
#
include_recipe 'users'
