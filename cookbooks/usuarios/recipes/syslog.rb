#
# Cookbook:: usuarios
# Recipe:: syslog
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
users_manage 'syslog' do
  data_bag 'syslog'
end
