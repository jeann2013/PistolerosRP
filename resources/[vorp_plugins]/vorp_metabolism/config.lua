Config = {
  Locale = "es",

  UseMetabolism = true, -- Experimental Function

  -- Status amount rate drop
  EveryTimeStatusDown = 3600, --  3,6 seconds
  HowAmountThirstWhileRunning = 3, -- Example drop 3 every 3,6 seconds -- Max value 1000
  HowAmountHungerWhileRunning = 2,
  HowAmountThirst = 2,
  HowAmountHunger = 1,
  HowAmountMetabolismWhileRunning = 4,
  HowAmountMetabolism = 2,

  FirstHungerStatus = 1000, -- 100%
  FirstThirstStatus = 1000, -- 100%

  OnRespawnHungerStatus = 1000,
  OnRespawnThirstStatus = 1000,

  FirstMetabolismStatus = 0,

  ItemsToUse = {
    {
      Name = "BigGameMeat",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_meat_bird",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "porknapples",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_breakfast",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 0,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_meat_stringy_cooked",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 0,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_applepie",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 0,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_meat_mature_venison_cooked",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 0,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
        Name = "bread",
        Thirst = 0,
        Hunger = 500,
        Metabolism = 0,
        Stamina = 0,
        InnerCoreHealth = 0,
        OuterCoreHealth = 0,
        InnerCoreHealthGold = 0.0,
        OuterCoreHealthGold = 0.0,
        InnerCoreStaminaGold = 0.0,
        OuterCoreStaminaGold = 0.0,
        PropName = "p_bread_08_ab",
        Animation = "eat"
    },
    {
      Name = "consumable_blueberrypie",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "consumable_pork_cooked",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_food01x_eaten",
      Animation = "eat"
    },
    {
      Name = "water",
      Thirst = 250,
      Hunger = 0,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 0,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_mugCoffee01x",
      Animation = "drink"
  },
  {
    Name = "consumable_meat_mature_venison_cooked",
    Thirst = 0,
    Hunger = 500,
    Metabolism = 0,
    Stamina = 0,
    InnerCoreHealth = 0,
    OuterCoreHealth = 5,
    InnerCoreHealthGold = 0.0,
    OuterCoreHealthGold = 0.0,
    InnerCoreStaminaGold = 0.0,
    OuterCoreStaminaGold = 0.0,
    PropName = "p_food01x_eaten",
    Animation = "eat"
  },
  {
      Name = "apple",
      Thirst = 0,
      Hunger = 500,
      Metabolism = 0,
      Stamina = 0,
      InnerCoreHealth = 0,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_apple01x",
      Animation = "eat"
  },
    {
      Name = "consumable_coffee",
      Hunger = 100,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0,
      OuterCoreHealthGold = 500,
      InnerCoreStaminaGold = 200,
      OuterCoreStaminaGold = 1000,
      PropName = "p_mugCoffee01x",
      Animation = "drink"
    },
    {
      Name = "consumable_kidneybeans_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 500,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_canbeansused01x",
      Animation = "eat"
    },
    {
      Name = "consumable_salmon_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 300,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_canbeansused01x",
      Animation = "eat"
    },
    {
      Name = "consumable_medicine",
      Thirst = 100,
      Hunger = 0,
      Metabolism = 200,
      Stamina = 0,
      InnerCoreHealth = 60,
      OuterCoreHealth = 40,
      InnerCoreHealthGold = 500.0,
      OuterCoreHealthGold = 1000.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "p_bottlemedicine01x",
      Animation = "drink"
    },
    {
      Name = "consumable_peach",
      Thirst = 100,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0.0,
      OuterCoreHealthGold = 0.0,
      InnerCoreStaminaGold = 0.0,
      OuterCoreStaminaGold = 0.0,
      PropName = "s_peach01x",
      Animation = "eat"
    }
  }

}

Translations = {
  ['en'] = {
    ['OnUseItem'] =  "You have consumed %s"
  },
  ['es'] = {
    ['OnUseItem'] =  "Consumistes %s"
  },
  ['pt_br'] = {
    ['OnUseItem'] =  "Você consumiu %s"
  }
}
