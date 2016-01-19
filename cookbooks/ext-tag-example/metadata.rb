name             'ext-tag-example'
maintainer       'Kabam'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Configures ext-tag-example'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends 'aws-tags'

recipe 'ext-tag-example::default', 'Example of external use of aws-tags library'
