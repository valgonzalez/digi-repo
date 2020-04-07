#
# Cookbook:: sudo
# Recipe:: panavaserver3
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
cookbook_file '/etc/sudoers.d/kannel' do
  source 'panavaserver3/kannel'
  mode '0644'
end
