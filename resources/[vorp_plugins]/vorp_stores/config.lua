Config = {}

-- TODO
-- CAMERA FACE NPC
-- NPC ANIMATION

--menu position
-- "center" / "top-left" / "top-right"
Config.Align = "top-right"

--Webhook Section, description is in translation
Config.UseWebhook = false -- Use webhook

--Mandatory Webhook Parts
Config.WebhookTitle = ""
Config.Webhook = ""

--Optional Webhook Parts, if not filled will default vorp_core config
Config.WebhookColor = ""
Config.WebhookName = ""
Config.WebhookLogo = ""
Config.WebhookLogo2 = ""
Config.WebhookAvatar = ""

Config.defaultlang = "en_lang"

-- open stores
Config.Key = 0x760A9C6F --[G]

--- STORES ---
Config.Stores = {
    Valentine = {
        blipAllowed = true,
        BlipName = "valentine store",
        storeName = "valentine",
        PromptName = "general store",
        sprite = 1475879922,
        x = -324.628, y = 803.9818, z = 116.88, h = -81.17, --blip/ prompt and npc positions
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- empty everyone can use
        JobGrade = 0, -- rank allowed
        category = { "food", "tools", "meds", "fishing" }, -- you need to add the same words to the sellitems and buyitems category you can add new categories as long the items have the category names
        storeType = { "sell", "buy" }, -- choose the storetype if you translate this you must do the same in the client.lua file
        StoreHoursAllowed = false, -- if you want the stores to use opening and closed hours
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { }
    },

    Rhodes = {
        blipAllowed = true,
        BlipName = "Rhodes Store",
        storeName = "Rhodes",
        PromptName = " general store",
        sprite = 1475879922,
        x = 1330.227, y = -1293.41, z = 76.021, h = 68.88,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = { "police", "sheriff" }, -- jobs allowed as many as you want
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" },
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 8, -- am
        StoreClose = 20, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Strawberry = {
        blipAllowed = true,
        BlipName = "Strawberry Store",
        storeName = "Strawberry",
        PromptName = "general store",
        sprite = 1475879922,
        x = -1789.66, y = -387.918, z = 159.32, h = 56.96,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" },
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 6, -- am
        StoreClose = 23, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Blackwater = {
        blipAllowed = true,
        BlipName = "Blackwater Store",
        storeName = "Blackwater",
        PromptName = "general store",
        sprite = 1475879922,
        x = -784.738, y = -1321.73, z = 42.884, h = 179.63,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Armadillo = {
        blipAllowed = true,
        BlipName = "Armadillo Store",
        storeName = "Armadillo",
        PromptName = "general store",
        sprite = 1475879922,
        x = -3687.34, y = -2623.53, z = -13.43, h = -85.32,
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" },
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Tumbleweed = {
        blipAllowed = true,
        BlipName = "Tumbleweed Store",
        storeName = "Tumbleweed",
        PromptName = "general store",
        sprite = 1475879922,
        x = -5485.70, y = -2938.08, z = -0.299, h = 127.72,
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    StDenis = {
        blipAllowed = true,
        BlipName = "ST Denis Store",
        storeName = "ST Denis",
        PromptName = "general store",
        sprite = 1475879922,
        x = 2824.863, y = -1319.74, z = 45.755, h = -39.61,
        distanceOpenStore = 2.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Vanhorn = {
        blipAllowed = true,
        BlipName = "Vanhorn Store",
        storeName = "Vanhorn",
        PromptName = "general store",
        sprite = 1475879922,
        x = 3025.420, y = 561.7910, z = 43.722, h = -99.20,
        distanceOpenStore = 2.5,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    BlackwaterFishing = {
        blipAllowed = true,
        BlipName = "Fishing store",
        storeName = "Bait Shop",
        PromptName = "fishing store",
        sprite = 3442726182,
        x = -757.069, y = -1360.76, z = 43.724, h = -90.80,
        distanceOpenStore = 2.5,
        NpcAllowed = false,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "bait", "tools", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="bait", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bait", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    },
    Wapiti = {
        blipAllowed = true,
        BlipName = "Wapiti store",
        storeName = "Wapiti Shop",
        PromptName = "Native store",
        sprite = 1475879922,
        x = 449.7435, y = 2216.437, z = 245.30, h = -73.78,
        distanceOpenStore = 2.5,
        NpcAllowed = true,
        NpcModel = "CS_EagleFlies",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "fishing" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="bait", amount=100, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bait", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="bread", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="water", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
            {itemName="consumable_peach", amount=100, type="buy"},  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)            
            {itemName="carrots", amount=100, type="buy"}
        }
    }
}


----------------------------------------------- STORE ITEMS --------------------------------------------------------------

-- ItemLable = translate here
-- itemName = same as in your databse
-- curencytype = "cash" or "gold" only use one.
-- price = numbers only
-- desc = a description of the item
-- category = where the item will be displayed at

---------------------------------------------------- SELL ITEMS --------------------------------------------------------------
Config.SellItems = {
    Valentine = {
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.10, randomprice = math.random(10), desc = "sell apples", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(25, 42), desc = "sell bandage", category = "meds" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil Med", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil Sma", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat Med", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat Sma", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel Med", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel Sma", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish L", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish EL", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon L", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass L", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass Med", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar L", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie L", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike L", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch Sma", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout L", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel Sma", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass Sma", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye L", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye MedLar", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass L", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass Med", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        

    },
    Rhodes = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.20, randomprice = math.random(40, 55), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(15), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(32, 52), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Strawberry = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Blackwater = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Armadillo = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Tumbleweed = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    StDenis = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Vanhorn = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 50), desc = "sell", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Water", itemName = "water", currencyType = "cash", sellprice = 0.10, randomprice = math.random(12), desc = "sell", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 45), desc = "sell bandage", category = "meds" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    BlackwaterFishing = {
        { itemLabel = "Bait", itemName = "Bait", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 65), desc = "sell Bait", category = "bait" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Fish Bait", itemName = "fishbait", currencyType = "cash", sellprice = 0.10, randomprice = math.random(15), desc = "sell", category = "bait" },
        { itemLabel = "Bread Bait", itemName = "p_baitBread01x", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 50), desc = "sell", category = "bait" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
    Wapiti = {
        { itemLabel = "Bait", itemName = "Bait", currencyType = "cash", sellprice = 0.50, randomprice = math.random(40, 65), desc = "sell Bait", category = "bait" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },        
        { itemLabel = "Fish Bait", itemName = "fishbait", currencyType = "cash", sellprice = 0.10, randomprice = math.random(15), desc = "sell", category = "bait" },
        { itemLabel = "Bread Bait", itemName = "p_baitBread01x", currencyType = "cash", sellprice = 0.40, randomprice = math.random(30, 50), desc = "sell", category = "bait" },
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", sellprice = 3, randomprice = math.random(30, 50), desc = "sell pick axe", category = "tools" },
        { itemName = "a_c_fishbluegil_01_ms", itemLabel = "Blue Gil (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbluegil_01_sm", itemLabel = "Blue Gil (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_ms", itemLabel = "Bullhead Cat (Medium)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishbullheadcat_01_sm", itemLabel = "Bullhead Cat (Small)", currencyType = "cash", sellprice = 1, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_ms", itemLabel = "Chain Pickerel (Medium)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchainpickerel_01_sm", itemLabel = "Chain Pickerel (Small)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_lg", itemLabel = "Channel Catfish (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishchannelcatfish_01_xl", itemLabel = "Channel Catfish (Extra Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlakesturgeon_01_lg", itemLabel = "Lake Sturgeon (Large)", currencyType = "cash", sellprice = 1.5, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_lg", itemLabel = "Large Mouth Bass (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlargemouthbass_01_ms", itemLabel = "Large Mouth Bass (Medium)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishlongnosegar_01_lg", itemLabel = "Long Nose Gar (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishmuskie_01_lg", itemLabel = "Muskie (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishnorthernpike_01_lg", itemLabel = "Northern Pike (Large)", currencyType = "cash", sellprice = 2, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_ms", itemLabel = "Perch (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishperch_01_sm", itemLabel = "Perch (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_lg", itemLabel = "Rainbow Trout (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrainbowtrout_01_ms", itemLabel = "Rainbow Trout (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishredfinpickerel_01_ms", itemLabel = "Red Fin Pickerel (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_ms", itemLabel = "Rock Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishrockbass_01_sm", itemLabel = "Rock Bass (Small)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_lg", itemLabel = "Salmon Sockeye (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ml", itemLabel = "Salmon Sockeye (Medium-Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsalmonsockeye_01_ms", itemLabel = "Salmon Sockeye (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_lg", itemLabel = "Small Mouth Bass (Large)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
        { itemName = "a_c_fishsmallmouthbass_01_ms", itemLabel = "Small Mouth Bass (Medium)", currencyType = "cash", sellprice = 3, randomprice = math.random(25, 42), desc = "fish", category = "fishing" },
    },
}

------------------------------------------------------ BUY ITEMS ---------------------------------------------------------
Config.BuyItems = {
    Valentine = {
        { itemLabel = "Pick Axe", itemName = "pickaxe", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Gold nugget", itemName = "golden_nugget", currencyType = "gold", buyprice = 2, randomprice = 2, desc = "buy gold nuget", category = "food" },
        { itemLabel = "Bread", itemName = "bread", currencyType = "cash", buyprice = 0.2, randomprice = 0.2, desc = "buy bread", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.50, randomprice = 0.50, desc = "buy bandage", category = "meds" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.2, randomprice = 0.2, desc = "buy water", category = "food" },
        { itemLabel = "Peach", itemName = "consumable_peach", currencyType = "cash", buyprice = 0.2, randomprice = 0.2, desc = "buy water", category = "food" },        
    },

    Rhodes = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
        { itemLabel = "Gold nugget", itemName = "golden_nugget", currencyType = "gold", buyprice = 10, randomprice = math.random(15), desc = "buy gold nuget", category = "food" },
    },

    Strawberry = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },

    Blackwater = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },
    Armadillo = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },
    Tumbleweed = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },
    StDenis = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },
    Vanhorn = {
        { itemLabel = "Apple", itemName = "apple", currencyType = "cash", buyprice = 0.50, randomprice = math.random(30, 52), desc = "buy apple", category = "food" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Water", itemName = "water", currencyType = "cash", buyprice = 0.10, randomprice = math.random(12), desc = "buy water", category = "food" },
        { itemLabel = "bandage", itemName = "bandage", currencyType = "cash", buyprice = 0.40, randomprice = math.random(30, 40), desc = "buy bandage", category = "meds" },
    },
    BlackwaterFishing = {
        { itemLabel = "Bait", itemName = "bait", currencyType = "cash", buyprice = 0.50, randomprice = math.random(45, 55), desc = "buy Bait", category = "bait" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Fish Bait", itemName = "fishbait", currencyType = "cash", buyprice = 0.10, randomprice = math.random(14), desc = "buy", category = "bait" },
        { itemLabel = "Bread Bait", itemName = "p_baitBread01x", currencyType = "cash", buyprice = 0.40, randomprice = math.random(34, 49), desc = "buy", category = "bait" },

    },
    Wapiti = {
        { itemLabel = "Bait", itemName = "bait", currencyType = "cash", buyprice = 0.50, randomprice = math.random(45, 55), desc = "buy Bait", category = "bait" },
        { itemLabel = "Hatchet", itemName = "hatchet", currencyType = "cash", buyprice = 3, randomprice = 1, desc = "buy Pick Axe", category = "tools" },
        { itemLabel = "Fish Bait", itemName = "fishbait", currencyType = "cash", buyprice = 0.10, randomprice = math.random(14), desc = "buy", category = "bait" },
        { itemLabel = "Bread Bait", itemName = "p_baitBread01x", currencyType = "cash", buyprice = 0.40, randomprice = math.random(34, 49), desc = "buy", category = "bait" },
    }
}
