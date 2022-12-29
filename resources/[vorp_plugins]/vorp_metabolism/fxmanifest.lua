fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

shared_script 'config.lua'
client_scripts {
  'client/*.lua'
}
server_scripts {
  'server/*.lua'
}

files {
  'ui/hud.html',
  'ui/css/style.css',
  'ui/js/circle-progress.js',
  'ui/js/circle-progress.min.js',
  'ui/img/food.png',
  'ui/img/food1.png',
  'ui/img/water.png',
  'ui/img/water1.png',
}
}
ui_page 'ui/hud.html'

version '1.0'
vorp_checker 'yes'
vorp_name '^4Resource version Check^3'
vorp_github 'https://github.com/VORPCORE/vorp_metabolism-lua'
