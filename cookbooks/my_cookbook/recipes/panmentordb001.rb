#
# Cookbook:: my_cookbook
# Recipe:: panmentordb001
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
node.default['openssh']['server']['permit_root_login'] = "no"
node.default['openssh']['server']['password_authentication'] = "yes"
node.default['openssh']['server']['allow_groups'] = "linux_admin dba_admin oinstall mentor"
node.default['openssh']['server']['x11_forwarding'] = "yes"
node.default['openssh']['server']['login_grace_time'] = "0"
#
include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin']
#
include_recipe 'sudo'
#
users_manage 'mentor' do
  action [:create]
  data_bag 'mentor'
end
#
include_recipe 'users'
