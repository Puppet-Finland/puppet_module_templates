# puppet_module_templates

A repository for Puppet module templates

# Usage

This repository should be cloned to the Puppet module directory or it will not 
operate correctly. Each directory in this repository should be a valid Puppet 
module directory, with the module name replaced with the string 
"modulename".

To create a new module from a template use newmodule.sh:

    USAGE
    
        newmodule.sh <template directory> <modulename>"
    
    EXAMPLES
    
        ./newmodule.sh installonly zsh"
        ./newmodule.sh daemon dhclient"

The newmodule.sh script copies the template module to ".." and renames all 
instances of "modulename" with the module name supplied by the user.
