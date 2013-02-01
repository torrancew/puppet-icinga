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
  Class['icinga::install']   -> Class['icinga::configure']
  Class['concat::setup']     -> Class['icinga::configure']

  $default_cfg_files = [
    '/etc/icinga/objects/contacts_icinga.cfg',
    '/etc/icinga/objects/hostgroups_icinga.cfg',
    '/etc/icinga/objects/generic-host_icinga.cfg',
    '/etc/icinga/objects/localhost_icinga.cfg',
    '/etc/icinga/objects/extinfo_icinga.cfg',
    '/etc/icinga/objects/generic-service_icinga.cfg',
    '/etc/icinga/objects/services_icinga.cfg',
    '/etc/icinga/objects/timeperiods_icinga.cfg',
  ]

  file { $default_cfg_files: ensure => absent }

  concat {
    '/etc/icinga/objects/contacts.cfg':
      owner => 'root',
      group => 'root',
      mode  => 0644;

    '/etc/icinga/objects/contactgroups.cfg':
      owner => 'root',
      group => 'root',
      mode  => 0644;

    '/etc/icinga/objects/timeperiods.cfg':
      owner => 'root',
      group => 'root',
      mode  => 0644;

    '/etc/icinga/objects/hostgroups.cfg':
      owner => 'root',
      group => 'root',
      mode  => 0644;
  }
}

