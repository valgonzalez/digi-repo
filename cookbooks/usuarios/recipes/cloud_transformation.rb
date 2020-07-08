#
# Cookbook:: usuarios
# Recipe:: cloud_transformation
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'cloud_transformation' do
  data_bag 'cloud_transformation'
end
