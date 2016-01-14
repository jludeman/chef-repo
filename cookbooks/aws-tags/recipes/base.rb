#
# Cookbook Name:: aws_tags
# Recipe:: base
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

service_tag(node[:tagging][:service])
deployment_tag(node[:tagging][:deployment])
