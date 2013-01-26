# == Class: icinga::configure
#
# A class for managing the configuration of an Icinga server
#
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
# This class should not generally be used directly
# It is wrapped by the "icinga" class
#
# === Authors
#
# Tray Torrance <devwork@warrentorrance.com>
#
# === Copyright
#
# Copyright 2012 Tray Torrance, unless otherwise noted.
#

class icinga::configure {
  Class['icinga::install'] -> Class['icinga::configure']
}

