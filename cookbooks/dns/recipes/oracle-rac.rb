#
# Cookbook:: dns
# Recipe:: oracle-rac
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# Cookbook:: dns
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
cookbook_file "/etc/resolv.conf" do
  source "resolv-rac.conf"
  mode "0644"
end
