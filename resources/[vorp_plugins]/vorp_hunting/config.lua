------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------- VORP HUNTING SCRIPT ------------------------------------------------------------------------

Config = {}

Config.DevMode = true -- DIABLE THIS IF YOUR SERVER IS LIVE

Config.Linux = true -- If they use a Linux server, then true

Config.butcherfunction = true -- set to true if you want to use butcher functions
----------------------------- TRANSLATE HERE -------------------------------------
Config.Language = {
    NotHoldingAnimal = "You Got Nothing To Sell",
    NotInTheButcher = "I won't buy that animal",
    AnimalSold = "Thanks for the deal you got ",
    SkinnableAnimalstowed = "You obtained ",
    stow = "Stow",
    press = "Press",
    sell = "Sell",
    notabutcher = "You Dont Have The Right Job",
    dollar = " $",
    join = " and ",
    FullInventory = "Inventory is too full."
}


------------------- PROMPT -----------------
Config.keys = {
    G = 0x760A9C6F, -- butcher sell and Stow
}

Config.aiButcherped = false -- spawn ai butched ped set to false if you dont want an ai butcher ped to spawn

Config.joblocked = false -- lock the butcher so only people with the job can access. u can change access to each butcher by editing this  butcherjob = "butcher"

Config.maxpelts = 2 -- max pelts allowed on back of horse

------------------- Item Quantity Instructions -----------------
-- The range for when a skinnableAnimal or Animal has a config value givenAmount of 0.
-- Example: Animals with givenAmount = {0} can be sold to the butcher or be skinned, which will give the player a random number between 1 and 3 amount of givenItem
Config.ItemQuantity = {
    Max = 3,
    Min = 1
}


Config.Butchers = {
    { butchername = "Valentine Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-339.0141, 767.6358, 115.5645),   heading = 100.41544342041,  radius = 3.0, showblip = true },
    { butchername = "Strawberry Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-1753.143, -392.4201, 155.2578),  heading = 181.37438964844,  radius = 3.0, showblip = true },
    { butchername = "Blackwater Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-754.0, -1285.158, 43.03),        heading = 273.579,          radius = 3.0, showblip = true },
    { butchername = "Annesburg Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2934.51, 1301.159, 43.48365),     heading = 70.572128295898,  radius = 3.0, showblip = true },
    { butchername = "Van Horn Butcher",    butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2991.844, 572.0218, 43.36182),    heading = 259.52850341797,  radius = 3.0, showblip = true },
    { butchername = "Rhodes Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1297.578, -1277.589, 74.88102),   heading = 146.60472106934,  radius = 3.0, showblip = true },
    { butchername = "Armadillo Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-3691.438, -2623.152, -14.75121), heading = 0.46632757782936, radius = 3.0, showblip = true },
    { butchername = "Tumbleweed Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-5510.371, -2947.005, -1.894515), heading = 251.54911804199,  radius = 3.0, showblip = true },
    { butchername = "Landing Butcher",     butcherjob = "butcher", blip = 1369919445, npcmodel = "CS_MP_SHAKY",          coords = vector3(-1435.61, -2330.28, 43.66),       heading = 1.15,             radius = 4.0, showblip = true },
    { butchername = "Saint Denis Butcher", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2819.54, -1331.21, 45.00),        heading = 51.8221321532,    radius = 4.0, showblip = true }
}

-----------------ANIMAL INSTRUCTIONS  -----------------
-- 1. To add more rewards on each animal, edit the givenItem table. For example change givenItem ={ "meat"}, to givenItem ={ "meat","feathers"}
-- 2. If using more than one item in givenItem, then you must add another value to givenAmount. For example change givenAmount ={0}, to givenAmount ={0,0}
-- 3. givenAmount = {0} will set an amount to random amount between ItemQuantity Max/Min
-- 4. givenAmount = {{2,5}} will set an amount to random between the first and second numbers in the supplied table, for the corresponding givenItem.
-- For example: givenItem = {"meat", "feathers", "claws", "beak"}, givenAmount = {{1,4}, {2,5}, 0, 1} will result in 1 to 4 "meat", 2 to 5 "feathers", ItemQuantity.Min to ItemQuanity.Max "claws" and 1 "beak".

----------------- !IMPORTANT! -----------------
-- TO ADD MORE ANIMALS AND FIND HASHES, HOLD ANIMALS OR PELTS AND DO /ANIMAL command
-- YOU CAN SEE WHAT ANIMAL HASH YOU Skined/plucked/stored IN THE f6/f8 logs.
-- THE ITEMS NAME MUST BE IN YOUR DATABASE FOR YOU TO RECEIVE THEM IN YOUR INVENTORY

-- Animals that are skinned/plucked/stored
Config.SkinnableAnimals = {
    --small animals skin them and sell them at the butcher no need to add them to  CONFIG.ANIMALS
    [989669666]   = { name = "Rat", givenItem = { "meat" }, givenAmount = { 1 }, givenDisplay = {}, money = 100, gold = 0, rolPoints = 0, xp = 1 },
    [1458540991]  = { name = "Raccoon", givenItem = { "pelt" }, givenAmount = { 0 }, givenDisplay = {}, money = 100, gold = 0, rolPoints = 0, xp = 1 },

    -- big animals when you skin them it gives you items. if you have it added TO CONFIG.ANIMALS JUST COPY PASTE HERE AND REMOVE THE GIVE MONEY ETC LIKE SHOWN BELOW.
    [1110710183]  = { name = "Deer", givenItem = { "meat","provision_deer_hide" }, givenAmount = { 1,1 }, givenDisplay = {"Carne", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1124266369] = { name = "Bear", givenItem = { "bearHeart", "bearClaws", "bear_skin" }, givenAmount = { 1, 3, 1 }, givenDisplay = { "Corazon", "Garras", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1568716381] = { name = "Big Horn Ram", givenItem = { "meat","provision_ram_hide","provision_ram_horn" }, givenAmount = { 1, 1, 1 }, givenDisplay = { "Carne", "Cuernos", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2028722809] = { name = "Boar", givenItem = { "meat","provision_boar_skin","provision_boar_tusk" }, givenAmount = { 1, 1, 1 }, givenDisplay = { "Carne", "Colmillo", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1963605336] = { name = "Buck", givenItem = { "meat","provision_buck_antlers","provision_buck_fur" }, givenAmount = { 1, 1, 1 }, givenDisplay = { "Carne", "Cuernos", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1556473961] = { name = "Bison", givenItem = { "meat","provision_bison_horn","provision_buffalo_fur" }, givenAmount = { 1, 1, 1 }, givenDisplay = { "Carne", "Cuernos", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1957001316] = { name = "Bull", givenItem = { "meat","provision_bull_horns","provision_bull_hide" }, givenAmount = { 1, 1, 1 }, givenDisplay = { "Carne", "Cuernos", "Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1003616053] = { name = "Duck", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,2 }, givenDisplay = { "Carne de ave", "Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1459778951] = { name = "Eagle", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,2 }, givenDisplay = { "Carne de ave", "Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [831859211] = { name = "Egret", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,2 }, givenDisplay = { "Carne de ave", "Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-2021043433] = { name = "Elk", givenItem = { "meat","provision_elk_fur","provision_elk_antlers" }, givenAmount = { 1,1,1 }, givenDisplay = { "Carne", "Astas","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [252669332] = { name = "American Red Fox", givenItem = { "provision_fox_claw","provision_fox_fur" }, givenAmount = { 1,1 }, givenDisplay = { "Garras","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1143398950] = { name = "Big Grey Wolf", givenItem = {  "meat","provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 3,1,1 }, givenDisplay = { "Carne","Garras","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-885451903] = { name = "Medium Grey Wolf", givenItem = {  "meat","provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 2,1,1 }, givenDisplay = { "Carne","Garras","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-829273561] = { name = "Small Grey Wolf", givenItem = {  "meat","provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 1,1,1 }, givenDisplay = { "Carne","Garras","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1104697660] = { name = "Vulture", givenItem = {  "feathers","provision_meat_gamey_bird" }, givenAmount = { 1,1 }, givenDisplay = { "Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-407730502] = { name = "Snapping Turtle", givenItem = {  "meat","turtleshell" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Caparazon"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-466054788] = { name = "Wild Turkey", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = { "Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-2011226991] = { name = "Wild Turkey", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = { "Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-166054593] = { name = "Wild Turkey", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = { "Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-229688157] = { name = "Water Snake", givenItem = {  "meat","SnakeSkin" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1790499186] = { name = "Snake Red Boa", givenItem = {  "meat","SnakeSkin" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1464167925] = { name = "Snake Fer-De-Lance", givenItem = {  "meat","SnakeSkin" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [846659001] = { name = "Black-Tailed Rattlesnake", givenItem = {  "meat","SnakeSkin" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [545068538] = { name = "Western Rattlesnake", givenItem = {  "meat","SnakeSkin" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1211566332] = { name = "Striped Skunk", givenItem = {  "meat","provision_skunk_fur" }, givenAmount = { 1,1 }, givenDisplay = { "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [40345436] = { name = "Merino Sheep", givenItem = { "meat","wool","provision_sheep_wool" }, givenAmount = { 1,1,1 }, givenDisplay = {"Lana", "Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-164963696] = { name = "Herring Seagull", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1076508705] = { name = "Roseate Spoonbill", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2023522846] = { name = "Dominique Rooster", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-466687768] = { name = "Red-Footed Booby", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-575340245] = { name = "Wester Raven", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1458540991] = { name = "North American Racoon", givenItem = {  "meat" }, givenAmount = { 1 }, givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-541762431] = { name = "Black-Tailed Jackrabbit", givenItem = {  "meat","provision_rabbit_pelt" }, givenAmount = { 1,1 }, givenDisplay = {"Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1755643085] = { name = "American Pronghorn Doe", givenItem = {  "meat","provision_pronghorn_fur","provision_pronghorn_horn" }, givenAmount = { 1,1,1 }, givenDisplay = {"Carne","Piel","Cuernos"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2079703102] = { name = "Greater Prairie Chicken", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1414989025] = { name = "Wirginia Possum", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1007418994] = { name = "Berkshire Pig", givenItem = { "meat","provision_pig_skin" }, givenAmount = { 1,1 }, givenDisplay = {"Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1416324601] = { name = "Ring-Necked Pheasant", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1265966684] = { name = "American White Pelican", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1797450568] = { name = "Blue And Yellow Macaw", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1654513481] = { name = "Panther", givenItem = { "provision_panther_fur","provision_panther_eye","provision_panther_heart" }, givenAmount = { 1,1,1 }, givenDisplay = {"Corazon","Piel","Ojos"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1205982615] = { name = "Californian Condor", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Plumas","Carne de ave"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2063183075] = { name = "Dominique Chicken", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Plumas","Carne de ave"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-2073130256] = { name = "Double-Crested Cormorant", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Plumas","Carne de ave"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [90264823] = { name = "Cougar", givenItem = {  "meat","provision_cougar_claw","provision_cougar_fur" }, givenAmount = { 1,2,1 }, givenDisplay = {"Carne","Piel","Garra"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-50684386] = { name = "Florida Cracker Cow", givenItem = {  "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 }, givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [480688259] = { name = "Coyote", givenItem = { "meat","provision_coyote_fang","provision_coyote_fur" }, givenAmount = { 1,1,1 }, givenDisplay = {"Carne","Piel","Colmillo"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-564099192] = { name = "Whooping Crane", givenItem = {  "provision_meat_gamey_bird","feathers","animal_crane" }, givenAmount = { 1,1,1 }, givenDisplay = {"Carne de ave","Plumas","Animal"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [457416415] = { name = "Gila Monster", givenItem = {  "meat" }, givenAmount = { 2 }, givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    
    [-753902995]   = { name = "Alpine Goat", givenItem = { "meat","provision_goat_hair" }, givenAmount = { 1,1 },givenDisplay = {"Carne","Pelo"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [723190474]    = { name = "Canada Goose", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-2145890973]  = { name = "Ferruinous Hawk", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 },givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [1095117488]   = { name = "Great Blue Heron", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 },givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-1854059305]  = { name = "Green Iguana", givenItem = { "provision_iguana_skin" }, givenAmount = { 1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-593056309]   = { name = "Desert Iguana", givenItem = { "provision_iguana_skin" }, givenAmount = { 1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [1751700893]   = { name = "Peccary Pig", givenItem = { "provision_pig_skin" }, givenAmount = { 1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [386506078]    = { name = "Common Loon", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 },givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-1098441944]  = { name = "Moose", givenItem = { "provision_moose_antler","meat", "provision_moose_fur" }, givenAmount = { 1,1,1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-1134449699]  = { name = "American Muskrat", givenItem = { "meat","provision_muskrat_fur" }, givenAmount = { 1,1 },givenDisplay = {"Carne","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-861544272]   = { name = "Great Horned Owl", givenItem = { "provision_meat_gamey_bird","feathers" }, givenAmount = { 1,1 },givenDisplay = {"Carne de ave","Plumas"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [556355544]    = { name = "Angus Ox", givenItem = { "meat","provision_oxen_hide","provision_oxen_horn" }, givenAmount = { 1,1,1 },givenDisplay = {"Carne","Piel","Cuernos"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [-1892280447]  = { name = "Alligator Small", givenItem = { "BigGameMeat" },  givenAmount = { 1 }, givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1},
    [-2004866590]  = { name = "Alligator", givenItem = { "BigGameMeat" },  givenAmount = { 1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [759906147]    = { name = "North American Beaver", givenItem = { "meat" }, givenAmount = { 1 },givenDisplay = {"Carne"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    [730092646]    = { name = "American Black Bear", givenItem = { "bearHeart", "bearClaws", "bear_skin" }, givenAmount = { 1,2,1 },givenDisplay = {"Corazon","Garras","Piel"}, money = 0, gold = 0, rolPoints = 0, xp = 1  },
    
    [-711779521]   = { name = "Longnose Gar", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-1553593715]  = { name = "Muskie", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [-300867788]   = { name = "Lake Sturgeon", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1538187374]   = { name = "Channel Catfish", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [697075200]    = { name = "Northern Pike", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1867262572]   = { name = "Bluegill", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1493541632]   = { name = "Bullhead catfish", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [3111984125]   = { name = "Chain Pickerl", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [463643368]    = { name = "bigmouth bass", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [3842742512]   = { name = "Perch", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [134747314]    = { name = "Rainbow trout", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [4051778898]   = { name = "Redfin Pickerl", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2313405824]   = { name = "Rock Bass", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [2410477101]   = { name = "Smallmouth bass", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [543892122]    = { name = "Salmon Redfish", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },
    [1702636991]   = { name = "Salmon sockeye", givenItem = { "fish" }, givenAmount = { 1 }, givenDisplay = {"Pez"}, money = 0, gold = 0, rolPoints = 0, xp = 1 },

}

-- Animals that are traded in to the butcher
Config.Animals = {
    -- Animals
    [-1124266369]  = { name = "Bear", givenItem = { "bearHeart","bearClaws" }, givenAmount = { 0 }, money = 7, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 957520252, good = 143941906, perfect = 1292673537 },
    [-1568716381] = { name = "Big Horn Ram", givenItem = { "meat","provision_ram_hide","provision_ram_horn" }, givenAmount = { 0 }, money = 6, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1796037447, good = -476045512, perfect = 1795984405 },
    [2028722809]   = { name = "Boar", givenItem = { "meat","provision_boar_skin","provision_boar_tusk" }, givenAmount = { 0 }, money = 4, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1248540072, good = nil, perfect = -1858513856 },
    [-1963605336]  = { name = "Buck", givenItem = { "provision_buck_antlers","provision_buck_fur" }, givenAmount = { 0 }, money = 7, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1603936352, good = -868657362, perfect = -702790226 },
    [1556473961]   = { name = "Bison", givenItem = { "meat","provision_bison_horn" }, givenAmount = { 0 }, money = 40, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1730060063, good = -591117838, perfect = -237756948 },
    [1957001316]   = { name = "Bull", givenItem = { "meat","provision_bull_horns" }, givenAmount = { 0 }, money = 40, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 9293261, good = -336086818, perfect = -53270317 },
    [1110710183]   = { name = "Deer", givenItem = { "meat", "provision_deer_hide" }, givenAmount = { 0 }, money = 10, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -662178186, good = -1827027577, perfect = -1035515486 },
    [-1003616053]  = { name = "Duck", givenItem = { "feathers" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1459778951]   = { name = "Eagle", givenItem = { "feathers","provision_eagle_talon" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [831859211]    = { name = "Egret", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2021043433]  = { name = "Elk", givenItem = { "meat","provision_elk_fur","provision_elk_antlers" }, givenAmount = { 0 }, money = 10, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 2053771712, good = 1181652728, perfect = -1332163079 },
    [252669332]    = { name = "American Red Fox", givenItem = { "provision_fox_claw","provision_fox_fur" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1647012424, good = 238733925, perfect = 500722008 },
    [-1143398950]  = { name = "Big Grey Wolf", givenItem = { "provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-885451903]   = { name = "Medium Grey Wolf", givenItem = { "provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 0 }, money = 4, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-829273561]   = { name = "Small Grey Wolf", givenItem = { "provision_trinket_wolf_heart","provision_wolf_fur" }, givenAmount = { 0 }, money = 5, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [1104697660]   = { name = "Vulture", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-407730502]   = { name = "Snapping Turtle", givenItem = { "turtleshell" }, givenAmount = { 1 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466054788]   = { name = "Wild Turkey", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2011226991]  = { name = "Wild Turkey", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-166054593]   = { name = "Wild Turkey", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-229688157]   = { name = "Water Snake", givenItem = { "SnakeSkin" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1790499186]  = { name = "Snake Red Boa", givenItem = { "SnakeSkin" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1464167925]   = { name = "Snake Fer-De-Lance", givenItem = { "SnakeSkin" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [846659001]    = { name = "Black-Tailed Rattlesnake", givenItem = { "SnakeSkin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [545068538]    = { name = "Western Rattlesnake", givenItem = { "SnakeSkin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1211566332]  = { name = "Striped Skunk", givenItem = { "provision_skunk_fur" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [40345436]     = { name = "Merino Sheep", givenItem = { "wool","provision_sheep_wool" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1729948479, good = -1317365569, perfect = 1466150167 },
    [-164963696]   = { name = "Herring Seagull", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1076508705]  = { name = "Roseate Spoonbill", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2023522846]   = { name = "Dominique Rooster", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466687768]   = { name = "Red-Footed Booby", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-575340245]   = { name = "Wester Raven", givenItem = { "feathers" }, givenAmount = { 0 }, money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1458540991]   = { name = "North American Racoon", givenItem = { "meat" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-541762431]   = { name = "Black-Tailed Jackrabbit", givenItem = { "provision_rabbit_pelt" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1755643085]   = { name = "American Pronghorn Doe", givenItem = { "provision_pronghorn_fur","provision_pronghorn_horn" }, givenAmount = { 0 }, money = 14, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -983605026, good = 554578289, perfect = -1544126829 },
    [2079703102]   = { name = "Greater Prairie Chicken", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1414989025]  = { name = "Wirginia Possum", givenItem = { "meat" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1007418994]   = { name = "Berkshire Pig", givenItem = { "provision_pig_skin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -308965548, good = -57190831, perfect = -1102272634 },
    [1416324601]   = { name = "Ring-Necked Pheasant", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1265966684]   = { name = "American White Pelican", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797450568]  = { name = "Blue And Yellow Macaw", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1654513481]   = { name = "Panther", givenItem = { "provision_panther_fur","provision_panther_eye","provision_panther_heart" }, givenAmount = { 0 }, money = 20, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1584468323, good = -395646254, perfect = 1969175294 },
    [1205982615]   = { name = "Californian Condor", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2063183075]  = { name = "Dominique Chicken", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2073130256]  = { name = "Double-Crested Cormorant", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [90264823]     = { name = "Cougar", givenItem = { "meat","provision_cougar_claw","provision_cougar_fur" }, givenAmount = { 0 }, money = 6, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1914602340, good = 459744337, perfect = -1791452194 },
    [-50684386]    = { name = "Florida Cracker Cow", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 334093551, good = 1150594075, perfect = -845037222 },
    [480688259]    = { name = "Coyote", givenItem = { "meat","provision_coyote_fang","provision_coyote_fur" }, givenAmount = { 0 }, money = 6, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1558096473, good = 1150939141, perfect = -794277189 },
    [-564099192]   = { name = "Whooping Crane", givenItem = { "feathers","animal_crane" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [457416415]    = { name = "Gila Monster", givenItem = { "meat" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-753902995]   = { name = "Alpine Goat", givenItem = { "meat","provision_goat_hair" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 699990316, good = 1710714415, perfect = -1648383828 },
    [723190474]    = { name = "Canada Goose", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2145890973]  = { name = "Ferruinous Hawk", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1095117488]   = { name = "Great Blue Heron", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1854059305]  = { name = "Green Iguana", givenItem = { "provision_iguana_skin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-593056309]   = { name = "Desert Iguana", givenItem = { "provision_iguana_skin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1751700893]   = { name = "Peccary Pig", givenItem = { "provision_pig_skin" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -99092070, good = -1379330323, perfect = 1963510418 },
    [386506078]    = { name = "Common Loon", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1098441944]  = { name = "Moose", givenItem = { "provision_moose_antler","meat", "provision_moose_fur" }, givenAmount = { 0 }, money = 8, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1868576868, good = 1636891382, perfect = -217731719 },
    [-1134449699]  = { name = "American Muskrat", givenItem = { "meat","provision_muskrat_fur" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-861544272]   = { name = "Great Horned Owl", givenItem = { "feathers" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [556355544]    = { name = "Angus Ox", givenItem = { "meat","provision_oxen_hide","provision_oxen_horn" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 4623248928, good = 1208128650, perfect = 659601266 },
    [-1892280447]  = { name = "Alligator Small", givenItem = { "BigGameMeat" },  givenAmount = { 0 },money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1806153689, good = -802026654, perfect = -1625078531 },
    [-2004866590]  = { name = "Alligator", givenItem = { "BigGameMeat" },  givenAmount = { 0 },money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 3, poor = -1243878166, good = nil, perfect = -1475338121 },
    [759906147]    = { name = "North American Beaver", givenItem = { "meat" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1569450319, good = -2059726619, perfect = 854596618 },
    [730092646]    = { name = "American Black Bear", givenItem = { "meat" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1083865179, good = 1490032862, perfect = 663376218 },
    -- Fish
    [-711779521]   = { name = "Longnose Gar", givenItem = { "fish" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1553593715]  = { name = "Muskie", givenItem = { "fish" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-300867788]   = { name = "Lake Sturgeon", givenItem = { "fish" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1538187374]   = { name = "Channel Catfish", givenItem = { "fish" }, givenAmount = { 0 }, money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [697075200]    = { name = "Northern Pike", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1867262572]   = { name = "Bluegill", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1493541632]   = { name = "Bullhead catfish", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [3111984125]   = { name = "Chain Pickerl", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [463643368]    = { name = "bigmouth bass", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [3842742512]   = { name = "Perch", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [134747314]    = { name = "Rainbow trout", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [4051778898]   = { name = "Redfin Pickerl", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2313405824]   = { name = "Rock Bass", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2410477101]   = { name = "Smallmouth bass", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [543892122]    = { name = "Salmon Redfish", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1702636991]   = { name = "Salmon sockeye", givenItem = { "fish" }, givenAmount = { 0 }, money = 2, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
}
