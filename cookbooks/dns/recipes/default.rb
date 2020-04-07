#
# Cookbook:: dns
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
cookbook_file "/etc/resolv.conf" do
  source "resolv.conf"
  mode "0644"
end
