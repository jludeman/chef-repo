#
# Cookbook Name:: aws_tags
# Recipe:: vpn
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

::Chef::Recipe.send(:include, AWSTags::Helper)

#functional_role_tag(node[:tagging][:functional_role][:vpn])
#technical_role_tag(node[:tagging][:technical_role][:vpn])
functional_role_tag("VPN")
technical_role_tag("VPN")
