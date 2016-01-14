#
# Cookbook Name:: aws_tags
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

include_recipe 'machine_tag'
