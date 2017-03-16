#
# Cookbook Name:: bb_base
# Recipe:: default
#
# Copyright (C) 2017 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# TODO: attribute to enable/disable
apt_update 'compile_phase' do
  action :nothing
end.run_action(:update)

chef_gem 'chef-vault' do
  compile_time true if respond_to?(:compile_time)
end

require 'chef-vault'

vault_user = chef_vault_item('bb_users','braden')

user vault_user['username'] do
  home vault_user['home_path']
  manage_home true
end

directory "#{vault_user['home_path']}/.chef" do
  owner vault_user['username']
  group vault_user['username']
end

# TODO: sudo access
# TODO: loop over all items in users data bag
# TODO: setup public key access
# TODO: setup .bashrc for users

