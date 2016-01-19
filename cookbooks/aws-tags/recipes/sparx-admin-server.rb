#
# Cookbook Name:: aws_tags
# Recipe:: sparx-admin-server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

functional_role_tag(node[:tagging][:functional_role][:sparx_admin_server])
if node[:tagging][:functional_role][:sparx_admin_server] == "Administration"
	technical_role_tag(node[:tagging][:technical_role][:sparx_admin_server][:administration])
elsif node[:tagging][:functional_role][:sparx_admin_server] == "Application"
	technical_role_tag(node[:tagging][:technical_role][:sparx_admin_server][:application])
end
