knife-cookbook-cleanup
========
A knife plugin for removing old versions of cookbooks from your chef-server, the plugin will only leave the latest versions of cookbooks on the server.


Installing knife-cookbook-cleanup
-------------------

## NOTE:

This isn't published as a gem yet, so to install the plugin you need to copy `cookbook_cleanup.rb` to the Chef gem's knife lib directory e.g. `chef-11.10.4/lib/chef/knife/`

#### Gem install

add `knife-cookbook-cleanup` to your Gemfile, or simply

    gem install knife-cookbook-cleanup

Usage
---------------

    knife cookbook cleanup