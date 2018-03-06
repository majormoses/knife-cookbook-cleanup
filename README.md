knife-cookbook-cleanup
========
A knife plugin for removing old versions of cookbooks from your chef-server, the plugin will only leave the latest versions of cookbooks on the server.


Installing knife-cookbook-cleanup
-------------------

#### Gem install

add `knife-cookbook-cleanup` to your Gemfile, or simply

    gem install knife-cookbook-cleanup

Usage
---------------

    
    ```
    $ knife cookbook cleanup --help
    knife cookbook cleanup
    -s, --server-url URL             Chef Server URL
        --chef-zero-host HOST        Host to start chef-zero on
        --chef-zero-port PORT        Port (or port range) to start chef-zero on.  Port ranges like 1000,1010 or 8889-9999 will try all given ports until one works.
    -k, --key KEY                    API Client Key
        --[no-]color                 Use colored output, defaults to enabled
    -c, --config CONFIG              The configuration file to use
        --config-option OPTION=VALUE Override a single configuration option
        --defaults                   Accept default values for all questions
    -d, --disable-editing            Do not open EDITOR, just accept the data as is
        --dry-run                    Allows showing what would have been done without actually doing the deed
    -e, --editor EDITOR              Set the editor to use for interactive commands
    -E, --environment ENVIRONMENT    Set the Chef environment (except for in searches, where this will be flagrantly ignored)
        --[no-]fips                  Enable fips mode
    -F, --format FORMAT              Which format to use for output
        --[no-]listen                Whether a local mode (-z) server binds to a port
    -z, --local-mode                 Point knife commands at local repository instead of server
    -u, --user USER                  API Client Username
        --print-after                Show the data after a destructive operation
    -V, --verbose                    More verbose output. Use twice for max verbosity
    -v, --version                    Show chef version
        --versions-to-keep VALUE     Versions of cookbooks to keep (default 1)
    -y, --yes                        Say yes to all prompts for confirmation
    -h, --help                       Show this message

    ```
