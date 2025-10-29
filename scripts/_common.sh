#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Set permissions
myynh_set_permissions () {
	chown -R "$app":"$app" "$install_dir"
	find "$install_dir" -type f -exec chmod 750 {} ';'
	find "$install_dir" -type d -exec chmod 755 {} ';'

	mkdir -p "$data_dir/plugins"
	chown -R "$app":"$app" "$data_dir"
	find "$data_dir" -type f -exec chmod 750 {} ';'
	find "$data_dir" -type d -exec chmod 755 {} ';'

	mkdir -p "/var/log/$app"
	chown -R "$app":"$app" "/var/log/$app"
	find "/var/log/$app" -type f -exec chmod 640 {} ';'
	find "/var/log/$app" -type d -exec chmod 755 {} ';'
}
