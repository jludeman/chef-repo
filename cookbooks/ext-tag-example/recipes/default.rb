#
# Cookbook Name:: ext-tag-test
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

marker "recipe_start_rightscale" do
    template "rightscale_audit_entry.erb"
end

include_recipe 'machine_tag'

::Chef::Recipe.send(:include, AWSTags::Helper)

service_tag(node[:tagging][:service])
deployment_tag(node[:tagging][:deployment])
