name             'ext-tag-test'
maintainer       'Kabam'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Configures ext-tag-test'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'aws-tags'

recipe 'ext-tag-test::default', 'test external use of tag library'
