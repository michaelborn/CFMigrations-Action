#!/bin/sh

# Arguments are passed in from action.yml through the Dockerfile
CMD=$1

###
# CONFIGURATION
# Most configuration is set via `box_config` env vars in the action.
# CommandBox will pick them up and run `config set`, removing the need to manually configure the module.
###


###
# RUN IT
###
box $CMD