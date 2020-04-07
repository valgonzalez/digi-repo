#
# Cookbook:: my_cookbook
# Recipe:: pa1fdasmsc02
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#node.default['openssh']['server']['permit_root_login'] = "no"
#node.default['openssh']['server']['password_authentication'] = "yes"
#node.default['openssh']['server']['allow_groups'] = "itops vas root fda"
#
#include_recipe 'openssh'
#
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['sysadmin', 'itops']
#
include_recipe 'sudo'
