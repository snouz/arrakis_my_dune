local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
  -- Main Item group for defining a new Tab with Arrakis Items in Inventory
  -- Item groups / subgroups
  {
    type = "item-group",
    name = "arrakis",
    order = "z",
    icon = "__arrakis_my_dune__/graphics/itemgroup/arrakis-tech-arrakis.png",
    icon_size = 128,
  },
  --- subgroups
  {
    type = "item-subgroup",
    name = "arrakis-water-production",
    group = "arrakis",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "arrakis-processes",
    group = "arrakis",
    order = "b"
  },

  -- Item declaration for Tier 1 Water Condenser Machine
  {
    type = "item",
    name = "water-condenser",
    icon = icons .. "water-condenser.png",
    subgroup = "arrakis-water-production",
    order = "a",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "water-condenser",
    stack_size = 20,
  },
  -- Item declaration for Tier 1 Dew Collector
  {
    type = "item",
    name = "dew-collector",
    icon = icons .. "water-condenser.png",
    subgroup = "arrakis-water-production",
    order = "b",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "dew-collector",
    stack_size = 20,
  },

-- Item declaration for Ornithopter

  {
    type = "item-with-entity-data",
    name = "ornithopter",
    icon = icons .. "ornithopter.png",
    subgroup = "transport",
    order = "b[personal-transport]-b[ornithopter]",
    inventory_move_sound = item_sounds.vehicle_inventory_move,
    pick_sound = item_sounds.vehicle_inventory_pickup,
    drop_sound = item_sounds.vehicle_inventory_move,
    place_result = "ornithopter_airborn",
    weight = 1 * tons,
    stack_size = 1
  },

-- Item declaration for Tier 1 Sand Rafinery Machine 

  {
    type = "item",
    name = "sand-refinery",
    icon = icons .. "sand-refinery.png",
    subgroup = "arrakis-water-production",
    order = "z",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "sand-refinery",
    stack_size = 10,
  },
-- Item declaration for Tier 1 Sand Collector Machine 
{
    type = "item",
    name = "sand-collector",
    icon = icons .. "sand-collector.png",
    subgroup = "arrakis-water-production",
    order = "b",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "sand-collector",
    stack_size = 20,
  },
-- Item declaration for Tier 1 Basic Sand Refinery Machine
{
    type = "item",
    name = "basic-sand-refinery",
    icon = icons .. "basic-sand-refinery.png",
    subgroup = "arrakis-water-production",
    order = "b",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "basic-sand-refinery",
    stack_size = 50,
  },
  -- Item declaration for Tier 1 Water Purification Facility
{
    type = "item",
    name = "water-purification-facility",
    icon = icons .. "water-purification-facility.png",
    subgroup = "arrakis-water-production",
    order = "b",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "water-purification-facility",
    stack_size = 10,
  },
--- Item declaration for Sand Item
  {
    type = "item",
    name = "sand",
    icon = icons .. "sand-3.png",
    subgroup = "arrakis-processes",
    order = "a",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "sand-1.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-2.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-3.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-4.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-5.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-6.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-7.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-8.png", scale = 0.5 },
      { size = 64, filename = icons .. "sand-9.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

  --- Item declaration for Silica Item
  {
    type = "item",
    name = "silica",
    icon = icons .. "silica.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "silica.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "molten-silica",
    icon = icons .. "molten-silica.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "molten-silica.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  --- Item declaration for Silica Fiber Item
  {
    type = "item",
    name = "silica-fiber",
    icon = icons .. "silica-fiber.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "silica-fiber.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

--- Item declaration for Silicon Paste Item
  {
    type = "item",
    name = "silicon-paste",
    icon = icons .. "silicon-paste.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "silicon-paste.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "silicon-plate",
    icon = icons .. "silicon-plate.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "silicon-plate.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

  --- Item declaration for Silicon Item
  {
    type = "item",
    name = "silicon-plate",
    icon = icons .. "silicon-plate.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "silicon-plate.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
--- Item declaration for Refined Holmium Paste Item
  {
    type = "item",
    name = "holmium-paste",
    icon = icons .. "holmium-paste.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "holmium-paste.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  --- Item declaration for Refined Holmium Plate Item
  {
    type = "item",
    name = "refined-holmium-plate",
    icon = icons .. "refined-holmium-plate.png",
    subgroup = "arrakis-processes",
    order = "aab",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "refined-holmium-plate.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  
  --- Item declaration for Treated Sand Item
  {
    type = "item",
    name = "treated-sand",
    icon = icons .. "treated-sand.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "treated-sand.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

  --- Item declaration for Metallic Sand Item
  {
    type = "item",
    name = "metallic-sand",
    icon = icons .. "metallic-sand.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "metallic-sand.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

  --- Item declaration for Mineral Sand Item
  {
    type = "item",
    name = "mineral-sand",
    icon = icons .. "mineral-sand.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "mineral-sand.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },

  --- Item declaration for Wafers Item
  {
    type = "item",
    name = "wafers",
    icon = icons .. "silicon-wafer.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },

  --- Item declaration for FILTERS ---- BASIC -- COAL -- SILICON -- TUNGSTEN -- HOLMIUM --

  {
    type = "item",
    name = "basic-filter",
    icon = icons .. "filters/basic-filter.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "filters/basic-filter.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },
  {
    type = "item",
    name = "coal-filter",
    icon = icons .. "filters/coal-filter.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "filters/coal-filter.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },
  {
    type = "item",
    name = "silicon-filter",
    icon = icons .. "filters/silicon-filter.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "filters/silicon-filter.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },
  {
    type = "item",
    name = "tungsten-filter",
    icon = icons .. "filters/tungsten-filter.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "filters/tungsten-filter.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },
  {
    type = "item",
    name = "holmium-filter",
    icon = icons .. "filters/holmium-filter.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "filters/holmium-filter.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },

  {
    type = "item",
    name = "chom-science-pack",
    icon = icons .. "chom-science-pack.png",
    subgroup = "arrakis-processes",
    order = "aac",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = icons .. "chom-science-pack.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "arrakis",
    random_tint_color = item_tints.iron_rust,
    weight = 0.1*kg,
  },


  --- Fluid declaration for Chemical Mud Fluid
  {
    type = "fluid",
    name = "chemical-mud",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.35, 0.15, 0.05},
    flow_color = {0.6, 0.3, 0.1},
    icon = icons .. "fluid/chemical-mud.png",
    order = "a[fluid]-a[water]-a[water]"
  },

  --- Fluid declaration for Polluted Water Fluid
  {
    type = "fluid",
    name = "sand",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/sand.png",
    order = "a[fluid]-a[water]-a[water]"
  },
  {
    type = "fluid",
    name = "spiced-sand",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/spiced-sand.png",
    order = "a[fluid]-a[water]-b[water]"
  },
  {
    type = "fluid",
    name = "washed-spiced-sand",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/washed-spiced-sand.png",
    order = "a[fluid]-a[water]-c[water]"
  },
  {
    type = "fluid",
    name = "treated-spiced-sand",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/treated-spiced-sand.png",
    order = "a[fluid]-a[water]-d[water]"
  },
  {
    type = "fluid",
    name = "refined-spiced-sand",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/refined-spiced-sand.png",
    order = "a[fluid]-a[water]-e[water]"
  },
  {
    type = "fluid",
    name = "spice-melange",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/spice-melange.png",
    order = "a[fluid]-a[water]-f[water]"
  },
  {
    type = "fluid",
    name = "ultra-concentred-spice",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/ultra-concentred-spice.png",
    order = "a[fluid]-a[water]-g[water]"
  },
  {
    type = "fluid",
    name = "polluted-water",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/polluted-water.png",
    order = "a[fluid]-a[water]-a[water]"
  },
  {
    type = "fluid",
    name = "crude-black-acid",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/crude-black-acid.png",
    order = "a[fluid]-a[water]-a[water]"
  },
  {
    type = "fluid",
    name = "black-acid",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/black-acid.png",
    order = "a[fluid]-a[water]-a[water]"
  },
  {
    type = "fluid",
    name = "black-holmium",
    subgroup = "arrakis-processes",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "2kJ",
    base_color = {0.25, 0.3, 0.1},
    flow_color = {0.5, 0.55, 0.2},
    icon = icons .. "fluid/black-holmium.png",
    order = "a[fluid]-a[water]-a[water]"
  },





})