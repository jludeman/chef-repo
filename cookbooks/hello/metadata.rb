name             'hello'
maintainer       'jl_test'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Configures hello'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "hello::default","Prints hello world output"
