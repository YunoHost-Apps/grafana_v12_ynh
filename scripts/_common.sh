#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Set permissions
myynh_set_permissions () {
	chown -R "$app": "$install_dir"
	chmod u=rwx,g=rwx,o= "$install_dir"
	find "$install_dir" -type f -exec chmod u=rwx,g=rwx,o= {} ';'
	find "$install_dir" -type d -exec chmod u=rwx,g=rwx,o= {} ';'

	mkdir -p "$data_dir/plugins"
	chown -R "$app": "$data_dir"
	chmod u=rwx,g=rwx,o= "$data_dir"
	find "$data_dir" -type f -exec chmod u=rwx,g=rwx,o= {} ';'
	find "$data_dir" -type d -exec chmod u=rwx,g=rwx,o= {} ';'

	mkdir -p "/var/log/$app"
	chown -R "$app": "/var/log/$app"
	chmod u=rw,g=rw,o= "/var/log/$app"
	find "/var/log/$app" -type f -exec chmod u=rw,g=rw,o= {} ';'
	find "/var/log/$app" -type d -exec chmod u=rw,g=rw,o= {} ';'
}
