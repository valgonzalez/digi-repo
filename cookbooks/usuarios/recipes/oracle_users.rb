#
# Cookbook:: usuarios
# Recipe:: oracle_users
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'oracle_users' do
  data_bag 'oracle_users'
end

%w{grid dba}.each do |g|
  group g do
    action :create
    members "oracle"
    append true
  end
end
