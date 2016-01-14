#
# Cookbook Name:: ext-tag-test
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'machine_tag'

::Chef::Recipe.send(:include, aws_tags::helper)

service_tag(node[:tagging][:service])
deployment_tag(node[:tagging][:deployment])
