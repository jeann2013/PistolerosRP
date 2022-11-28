Config = {}

Config.SellKey = 0xD8F73058

Config.Framework = "vorp" -- "redemrp" or "vorp" or "qbr"

Config.SellHorse = {
    ["MinPrice"] = 100,
    ["MaxPrice"] = 200,
    ["Messages"] = {
        ["Duration"] = 4000, --4sec
        ["Title"] = "Tienda de Caballos",
        ["GetHorse"] = "~h~~e~Domar un caballo salvaje y traerlo de vuelta aquí!",
        ["NotBroken"] = "~h~~e~Trae aquí el último caballo domado!",
        ["Sold"] = "~h~~e~Caballo vendido! +$",
    }
}
