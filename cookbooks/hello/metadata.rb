name             'hello'
maintainer       'jl_test'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Configures hello'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rightscale"

recipe "hello::default","Prints hello world output"

attribute "httpd/hello/name",
	:display_name => "Hello ____!",
	:description => "Specify who your server is saying 'hello' to.",
	:required => "required",
	:choice => ["World", "John", "Unknown"],
	:default => "World",
	:recipes => ["hello::default"]
