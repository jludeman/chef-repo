#
# Cookbook Name:: aws_tags
# Recipe:: logging
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

#functional_role_tag(node[:tagging][:functional_role][:logging])
#technical_role_tag(node[:tagging][:technical_role][:logging])
functional_role_tag("Logging")
technical_role_tag("Scribe")
