#
# Cookbook Name:: aws_tags
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

#functional_role_tag(node[:tagging][:functional_role][:database])
functional_role_tag("Database")
technical_role_tag(node[:tagging][:technical_role][:database])
