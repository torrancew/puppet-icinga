# == Class: icinga
#
# A wrapper around icinga::install, icinga::configure and icinga::service
# Utilizes the anchor pattern as defined in stdlib, but does not require
# that stdlib provide it
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
#  include icinga
#
# === Authors
#
# Tray Torrance <devwork@warrentorrance.com>
#
# === Copyright
#
# Copyright 2012 Tray Torrance, unless otherwise noted.
#

class icinga {
  class { ['icinga::install', 'icinga::configure', 'icinga::service']: }

  anchor { 'icinga::begin': } -> Class['icinga::install']
  Class['icinga::service']    -> anchor { 'icinga::end': }
}

