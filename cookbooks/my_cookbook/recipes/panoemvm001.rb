#
# Cookbook:: my_cookbook
# Recipe:: panoemvm001
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#node.default['openssh']['server']['permit_root_login'] = "no"
#node.default['openssh']['server']['password_authentication'] = "yes"
#node.default['openssh']['server']['allow_groups'] = "linux_admin dba_admin oracle cloud_transformation"
#node.default['openssh']['server']['x11_forwarding'] = "yes"
#node.default['openssh']['server']['login_grace_time'] = "0"
#
#include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'cloud_transformation']
#
include_recipe 'sudo'
