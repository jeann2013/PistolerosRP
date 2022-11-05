fx_version "adamant"
games {"rdr3"}

author 'Jean'
description 'A New Discord Whitelist System for RedM'
version '1.0.0'

dependency 'yarn'

server_scripts {
  'config.json',
  'index.js',
}

server_exports {
  'isRolePresent',
  'getUserRoles',
  'getUserData'
}