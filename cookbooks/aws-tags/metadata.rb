name             'aws-tags'
maintainer       'Kabam'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Executes aws-tags'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'machine_tag'
depends 'marker'

recipe 'aws-tags::default', 'makes sure machine_tag is installed'
recipe 'aws-tags::base', 'adds base tags (service and deployment)'

attribute "tagging/service",
    :display_name => "Service Tag",
    :description => "Sets service tag for servers. Should set as a deployment level input. Service includes games as well as other services (web servers, for example).",
    :required => "required",
    :choice => ["BI", "EBG", "Fast", "FFL", "Fusion", "Gods and Monsters", "Marvel", "SWUP", "TechOps", "Accounts", "VPN", "explodingbarel.com"],
    :recipes => ["aws-tags::base"]

attribute "tagging/deployment",
	:display_name => "Deployment Tag",
	:description => "Sets deployment tag for servers. Should be set as a deployment level input.",
	:required => "required",
	:choice => ["Production", "Development", "Staging", "Appreview"],
	:recipes => ["aws-tags::base"]
