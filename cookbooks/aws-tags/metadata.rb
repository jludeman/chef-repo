name             'aws-tags'
maintainer       'Kabam'
maintainer_email 'jludeman@kabaminc.com'
license          'All rights reserved'
description      'Installs/Executes aws-tags'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends 'machine_tag'
depends 'marker'

recipe 'aws-tags::default', 'Makes sure prerequisites are installed.'
recipe 'aws-tags::base', 'Sets Deployment and Service tags for a server. Also use one of the other tag scripts to set the server Role tags (functional and technical).'
recipe 'aws-tags::application', 'Set functional role tag as Application and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general.'
recipe 'aws-tags::database', 'Set functional role tag as Database and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general.'
recipe 'aws-tags::development', 'Set functional role tag as Development and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general.'
recipe 'aws-tags::logging', 'Set functional role tag as Logging and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general. Currently only has Scribe technical role and defaults to this.'
recipe 'aws-tags::sparx-admin-server', 'Sets functional role and technical role tags. Choose functional role and the appropriate technical role for that functional role. Other technical role may be left empty. For example, if you choose the Application functional role, also select an application technical role but leave the administration technical role blank.'
recipe 'aws-tags::vpn', 'Set functional role tag as VPN and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general. Currently only has VPN technical role and defaults to this.'
recipe 'aws-tags::web', 'Set functional role tag as Web and choice of technical role tag. Technical roles are a more specific role, while functional roles are more general. Currently only has Web technical role and defaults to this.'

# Base Tag Inputs
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

# Application Tag Inputs
attribute "tagging/technical_role/application",
    :display_name => "Technical Role Tag",
    :description => "Sets technical role tag for this server.",
    :required => "required",
    :choice => ["API", "Daemons", "Push", "Worker"],
    :recipes => ["aws-tags::application"]

# Database Tag Inputs
attribute "tagging/technical_role/database",
    :display_name => "Technical Role Tag",
    :description => "Sets technical role tag for this server.",
    :required => "required",
    :choice => ["Mongo Config", "Mongo Shard", "Mongo Shard Backup", "Redis", "Redis Master", "Redis Slave"],
    :recipes => ["aws-tags::database"]

# Development Tag Inputs
attribute "tagging/technical_role/development",
    :display_name => "Technical Role Tag",
    :description => "Sets technical role tag for this server.",
    :required => "required",
    :choice => ["Development", "LiveOps", "Preproduction", "Scratch", "Staging", "Submission", "QA"],
    :recipes => ["aws-tags::development"]

# Logging Tag Inputs
#attribute "tagging/technical_role/logging",
#    :display_name => "Technical Role Tag",
#    :description => "Sets technical role tag for this server.",
#    :required => "required",
#    :choice => [],
#    :recipes => ["aws-tags::logging"]

# Sparx Admin Server Tag Inputs
attribute "tagging/functional_role/sparx_admin_server",
    :display_name => "Functional Role Tag",
    :description => "Sets functional role tag. You should also set the appropriate technical role tag.",
    :required => "required",
    :choice => ["Administration", "Application"],
    :recipes => ["aws-tags::sparx-admin-server"]

attribute "tagging/technical_role/sparx_admin_server/administration",
    :display_name => "Administration Technical Role Tag",
    :description => "Select technical role here if you chose the 'Administration' functional role. Otherwise, leave blank.",
    :required => "recommended",
    :choice => ["Administration"],
    :recipes => ["aws-tags::sparx-admin-server"]

attribute "tagging/technical_role/sparx_admin_server/application",
    :display_name => "Application Technical Role Tag",
    :description => "Select technical role here if you chose the 'Application' functional role. Otherwise, leave blank.",
    :required => "recommended",
    :choice => ["API", "Daemons", "Push", "Worker"],
    :recipes => ["aws-tags::sparx-admin-server"]

# VPN Tag Inputs
#attribute "tagging/technical_role/vpn",
#    :display_name => "Technical Role Tag",
#    :description => "Sets technical role tag for this server.",
#    :required => "required",
#    :choice => [],
#    :recipes => ["aws-tags::vpn"]

# Web Tag Inputs
#attribute "tagging/technical_role/web",
#    :display_name => "Technical Role Tag",
#    :description => "Sets technical role tag for this server.",
#    :required => "required",
#    :choice => [],
#    :recipes => ["aws-tags::web"]

