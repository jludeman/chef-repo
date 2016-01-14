#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker
log "Hello World! You should try Chef with RightScale!"

package 'httpd'

service 'httpd' do
	action [:enable, :start]
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
	variables({
		:name => node[httpd][hello][name]
	})
end

service 'iptables' do
	action :stop
end
