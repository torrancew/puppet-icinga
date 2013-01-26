# == Class: icinga::service
#
# A class for managing the Icinga server daemon
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

class icinga::service {
  Class['icinga::configure'] -> Class['icinga::service']

  service {
    'icinga':
      ensure => running,
      enable => true;
  }
}

