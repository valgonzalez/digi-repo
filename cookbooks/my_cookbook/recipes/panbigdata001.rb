#
# Cookbook:: my_cookbook
# Recipe:: panbigdata001
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default['authorization']['sudo']['passwordless'] = false
node.default['authorization']['sudo']['groups'] = ['linux_admin', 'sudo', 'admin']
#
include_recipe 'sudo'
