aws_tags Cookbook
=================
Cookbook provides a number of default recipes for tagging servers (same as the RightScripts currently being used). This also adds a library containing tagging functions so that we can work on implementing in-code tagging where possible (i.e. if a server can determine its tag from other attributes or code sources, we could remove user input entirely and have the server just tag itself).

Requirements
------------
#### cookbooks
- `machine_tags` - aws_tags needs machine_tags to add tags to a server and is used by the library tagging functions.
- `marker` - aws_tags uses marker to create a nice audit output.

Attributes
----------
#### aws_tags::base
<table>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Service Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets service tag for servers. Should set as a deployment level input. Service includes games as well as other services (web servers, for example).</td>
  </tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Deployment Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets deployment tag for servers. Should be set as a deployment level input.</td>
  </tr>
</table>

#### aws_tags::application
<table>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Technical Role Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets technical role tag for this server.</td>
  </tr>
</table>

#### aws_tags::database
<table>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Technical Role Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets technical role tag for this server.</td>
  </tr>
</table>

#### aws_tags::development
<table>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Technical Role Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets technical role tag for this server.</td>
  </tr>
</table>

#### aws_tags::sparx-admin-server
<table>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Functional Role Tag</tt></td>
    <td><tt>Required</tt></td>
    <td>Sets functional role tag. You should also set the appropriate technical role tag.</td>
  </tr>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Administration Technical Role Tag</tt></td>
    <td><tt>Recommended</tt></td>
    <td>Select technical role here if you chose the 'Administration' functional role. Otherwise, leave blank.</td>
  </tr>
  <tr>
    <th>Name</th>
    <th>Required</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>Application Technical Role Tag</tt></td>
    <td><tt>Recommended</tt></td>
    <td>Select technical role here if you chose the 'Application' functional role. Otherwise, leave blank.</td>
  </tr>
</table>

Basic Usage
-----------
#### aws_tags::default
Apply this to 'Boot Sequence' on any server using these scripts, it makes sure that machine tags has been installed.

#### aws_tags::base
Apply this to 'Boot Sequence' and 'Operational Scripts' on all servers. This will set the Service and Deployment tags.

#### aws_tags::application
Apply this to 'Boot Sequence' and 'Operational Scripts' on application servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::database
Apply this to 'Boot Sequence' and 'Operational Scripts' on database servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::development
Apply this to 'Boot Sequence' and 'Operational Scripts' on development servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::logging
Apply this to 'Boot Sequence' and 'Operational Scripts' on logging servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::sparx-admin-server
Apply this to 'Boot Sequence' and 'Operational Scripts' on sparx admin servers servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::vpn
Apply this to 'Boot Sequence' and 'Operational Scripts' on vpn servers. This will provide inputs and set the Functional Role and Technical Role tags.

#### aws_tags::web
Apply this to 'Boot Sequence' and 'Operational Scripts' on web servers. This will provide inputs and set the Functional Role and Technical Role tags.

Advanced Usage
--------------
If you wish to be able to tag via code, it is possible to include the library functions into your own recipes and use code based methods to determine and properly tag a server. See this example cookbook for more details: https://github.com/jludeman/chef-test/tree/master/cookbooks/ext-tag-example

Contributing
------------
Feel free to add or modify the recipes and attribute options as necessary for proper tagging of servers.

1. Fork the repository on Github
2. Create a named feature branch (like `add_x_option`)
3. Write your change
4. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Johnathon Ludeman
