#
# Cookbook Name:: aws_tags
# Recipe:: base
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

marker "recipe_start_rightscale" do
	template "rightscale_audit_entry.erb"
end

service = node[:tagging][:service]
deployment = node[:tagging][:deployment]

log "Adding service tag '#{service}'..."
machine_tag "ec2:service=#{service}"

log "Adding deployment tag '#{deployment}'..."
machine_tag "ec2:deployment=#{deployment}"
