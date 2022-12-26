----------------------------------------------------------------------------
------------           VORP SHARED CONFIG                       ------------
----------------------------------------------------------------------------

Config = {
  ----------------------------------------------------------------------------
  ----------------------- SERVER MANAGEMENT -------------------------------------
  autoUpdateDB = true,

  ----------------------------------------------------------------------------
  ----------------------- STARTING POINT -------------------------------------
  initGold                 = 0.0,
  initMoney                = 100.0,
  initRol                  = 0.0,
  initXp                   = 0,
  initJob                  = "unemployed", -- leave it like this
  initJobGrade             = 0, -- leave it like this
  initGroup                = "user", -- leave it like this
  Whitelist                = false,
  AllowWhitelistAutoUpdate = false,
  maxHealth                = 1, -- 10 is FULL 0 IS EMPTY define max outer core for players
  maxStamina               = 1, -- 10 is FULL 0 IS EMPTY define max outer core for players
  PVP                      = true, -- Can players attack/hurt one another
  PVPToggle                = true, -- If true, players can set their own pvp state
  savePlayersTimer         = 10000, -- this will tell the core in how many miliseconds should all players be saved to the database, decreasing may reduce performance
  showplayerIDwhenfocus    = true, -- set false will show steam name when focus on another player RMB
  disableAutoAIM           = true, -- if false players with controllers will have autoaim just like in rdr2
  ------------------------------------------------------------------------------
  --------------------------- MULTICHARACTER -----------------------------------
  SaveSteamNameDB          = false, -- TRUE if you want save steamname on character DB when player drop (need to update SQL)
  UseCharPermission        = false, --(do not use this right now) TRUE if you want give multicharacter on selected players (need to update SQL) | if you change TRUE to FALSE player logs with first character created
  MaxCharacters            = 1, --MAX ALLOWED TO BE CREATED [if UseCharPermission = true, SELECTED players(with command) can create MaxCharacters characters / if UseCharPermission = false, players can create MaxCharacters characters]

  ------------------------------------------------------------------------------
  ------------------------------ UI CORES --------------------------------------
  HideOnlyDEADEYE = true,
  HidePlayersCore = false,
  HideHorseCores = false,

  ------------------------------------------------------------------------------
  ------------------------------ WEBHOOKS --------------------------------------


  webhookColor = 16711680, --EMBED COLOR
  name         = "1880RP", --NAME OF EMBED
  logo         = "https://via.placeholder.com/30x30", --HEAD LOGO
  footerLogo   = "https://via.placeholder.com/30x30", --FOOTER LOGO
  Avatar       = "https://via.placeholder.com/30x30", -- AVATAR LOGO


  ---------------------------- WEBHOOK FOR EACH LOG -----------------------------
  --CHANGE THE LINKS
  -- delete what you dont want or add nil
  Logs = {
    SetgroupWebhook   = "", --SETJOB
    SetjobWebhook     = "", --SETGROUP
    AddmoneyWebhook   = "", --ADDMONEY
    DelMoneyWebhook   = "", --DELMONEY
    AddItemsWebhook   = "", --ADDITEMS
    AddWeaponsWebhook = "", --ADDWEAPONS
    DelWagonsWebhook  = "", --DELWAGONS
    TpmWebhook        = "", --TPM
    DelHorseWebhook   = "", --DELHORSE
    HealPlayerWebhook = "", --HEALPLAYER
    ReviveWebhook     = "", --REVIVE
    WhitelistWebhook  = "", --WHITELIST
    BanWarnWebhook    = "", --BANS/WARNS
    NewPlayerWebhook  = "", --NEWPLAYER
    CharPermWebhook   = "", --CHARPERMS
    ChangeNameWebhook = "", -- CHANGECHARNAMES
  },

  ------------------------------------------------------------------------------
  ------------------------- SHOW OR HIDE UI's ----------------------------------

  HideUi            = true, --show or hide the UI includes  gold cash ID and level bar  the cash gold ID are now being displayed in the inventory. you can disable this one if yo u like it more
  mapTypeOnFoot     = 3, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on foot
  mapTypeOnMount    = 3, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on horse
  enableTypeRadar   = false, --- if true the above will work, if false players can choose their radar type in the game settings.
  Loadinscreen      = true, --ENABLE LOADING SCREENS on spawn and while spawn dead
  LoadinScreenTimer = 10000, -- miliseconds
  -------------------------------------------------------------------------------
  ------------------------------- RESPAWN ---------------------------------------

  HealthOnRespawn = 500, --Player's health when respawned in hospital (MAX = 500)
  HealthOnResurrection = 100, --Player's health when resurrected (MAX = 500)
  DisableRecharge = true, --Disable auto recharge of health outer core (real ped health)
  RespawnTime = 10, --seconds
  RespawnKey = 0xDFF812F9, --[E] KEY
  RespawnKeyTime = 5000, -- Milliseconds it will take to press the button
  RespawnTitleFont = 1, -- for the draw text message
  RespawnSubTitleFont = 1, -- for the draw text message sub title font
  CombatLogDeath = true, -- people who combat log now spawn in dead rather than force spawned
  ShowUiDeath = true, -- show or hide the UI if player is dead
  camDeath = false, -- enable or disable the camera death function
  sprite = true, --- enable text with sprite or disable
  spriteColor = { r = 100, g = 1, b = 1 }, -- sprite rgb color

  hospital = {
    Valentine = {
      name = "Valentine",
      x = -283.83,
      y = 806.4,
      z = 119.38,
      h = 321.76
    },
    Saint = {
      name = "Saint",
      x = 2721.4562,
      y = -1446.0975,
      z = 46.2303,
      h = 321.76
    },
    Armadillo = {
      name = "Armadillo",
      x = -3742.5,
      y = -2600.9,
      z = -13.23,
      h = 321.76
    },
    bw = {
      name = "bw",
      x = -723.9527,
      y = -1242.8358,
      z = 44.7341,
      h = 321.76
    },
    rhodes = {
      name = "rhodes",
      x = 1229.0,
      y = -1306.1,
      z = 76.9,
      h = 321.76
    },
  },
  -----------------------------------------------------------------------------

  ActiveEagleEye = true,
  ActiveDeadEye = false,
  TimeZoneDifference = 1, -- Your time zone difference with UTC in winter time

  ----------------------------------------------------------------------------
  --------------------------- COMMAND PERMISSION -----------------------------
  SetUserDBadmin = true, -- should the command addGroup set admins on Users able? for characters table do false
  GroupAllowed = { "admin" }, -- add here groups
  Commands = { "addGroup", "addJob", "addItems", "addWeapons", "addMoney", "delMoney", "healplayer",
    "reviveplayer", "tpm", "delhorse", "delwagons", "banplayer", "wlplayer", "unwlplayer", "warn",
    "unban", "unwarn", "changeCharName" }, -- commands available

  --------------------------------------------------------------------------------------
  -----------------------------BUILT IN RICH PRESENCE DISCORD --------------------------
  maxplayers = 64, -- change to the number of players that can get in to your server
  appid = nil, -- Application ID (Replace this with you own)
  biglogo = "1880RP", -- image assets name for the "large".
  biglogodesc = " Redm Server Connect: ", -- text when hover over image
  smalllogo = "1880RP", -- image assets name for the "small" icon.(OPTIONAL)
  smalllogodesc = "Join us for a good time", -- text when hover over image
  discordlink = "https://discord.gg/nS4cWVVvnt", -- discord link
  richpresencebutton = "Join Discord", --set button text for Rich Presence Button
  shownameandid = true, --show player steam name and id

  ---------------------------------------------------------------------------------------
  ------------------------------- TRANSLATE ---------------------------------------------
  Langs = {
    IsConnected        = "🚫 Cuende steam duplicada (steam | rockstar)",
    NoSteam            = "🚫 Tienes que tener Steam abierto, por favor abre Steam y reinicia RedM",
    NoInWhitelist      = "🚫 No estás en la Whitelist. Envía en el canal de discord jeann#9751 tu user-id: ",
    NoPermissions      = "No tienes suficientes permisos",
    CheckingIdentifier = "Chequiando Identidad",
    LoadingUser        = "Cargando Usuario",
    BannedUser         = "Está prohibido hasta que ",
    DateTimeFormat     = "%d/%m/%y %H:%M:%S", -- Set wished DateTimeFormat for output in ban notification
    TimeZone           = " CET", -- Set your timezone
    DropReasonBanned   = "Has sido expulsado del servidor hasta ",
    Warned             = "Se le advirtió",
    Unwarned           = "Tu advertencia se quito",
    TitleOnDead        = "Haz /alertdoctor en el chat para solicitar la ayuda de los médicos",
    SubTitleOnDead     = "Puedes reaparecer en %s segundos",
    RespawnIn          = "Puedes reaparecer en ",
    SecondsMove        = " segundos",
    YouAreCarried      = "Te lleva una persona",
    VoiceRangeChanged  = "El alcance del chat de voz ha cambiado a %s metros",
    promptLabel        = "Reaparecer", -- prompt label.
    prompt             = "Presione", -- prompt group label
    wayPoint           = "1880RP: ¡Primero tienes que fijar un punto de entrada!",
    mustBeSeated       = "1880RP: ¡Debes estar en el asiento del conductor!",
    wagonInFront       = "1880RP: ¡Debes estar sentado o cerca de un vagón para borrarlo!",
    cantCarry          = "1880RP: ¡No se pueden llevar más armas!",
    Hold               = "¡¡ESPERA!!",
    Load               = "Está cargando..",
    Almost             = "Ya casi estás..",
    Holddead           = "¡¡ESTAS MUERTO!!",
    Loaddead           = "dejaste el servidor mientras estaba muerto",
    forcedrespawn      = "REAPARECERÁS",
    forced             = "Porque dejaste el servidor mientras estabas muerto",
    sit                = "necesitas estar sentado",
    NotifyChar         = "debes poner la altura de tu personaje al menos 1.0 o habrá bugs.",
    NotifyCharSelect   = "Una vez que ~e~borres ~q~un personaje, no hay vuelta atrás!",
    PVPNotifyOn        = "PVP On ",
    PVPNotifyOff       = "PVP Off",
    AddChar            = "Se ha añadido el Multicharacter ",
    RemoveChar         = "Se quitó el Multicharacter ",
    WrongHex           = "Hex no esta en la DB o Hex incorrecto",
    myjob              = "tu trabajo es: ~o~",
    mygrade            = " ~q~grado: ~o~",
    charhours          = "tu personaje tiene la hora: ~o~",
    playhours          = "horas jugadas es: ~o~"
  },



}
