#
# Cookbook Name:: aws_tags
# Recipe:: base
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

def service_tag(service)
    log "Adding service tag '#{service}'..."
    machine_tag "ec2:service=#{service}"
end

def deployment_tag(deployment)
    log "Adding deployment tag '#{deployment}'..."
    machine_tag "ec2:deployment=#{deployment}"
end

if __FILE__ == $0
	marker "recipe_start_rightscale" do
		template "rightscale_audit_entry.erb"
	end
	
	service_tag(node[:tagging][:service])
	deployment_tag(node[:tagging][:deployment])
end
