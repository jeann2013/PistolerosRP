fx_version "adamant"
games { 'rdr3' }

author 'KeremWho (kerem.kim)'
description 'A New Discord Whitelist System for FiveM'
version '1.0.0'

dependency 'yarn'

server_scripts {
  'index.js',
}

server_exports {
  'isRolePresent',
  'getUserRoles',
  'getUserData'
}