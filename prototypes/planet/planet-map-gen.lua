local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")

planet_map_gen.arrakis = function()
  return
  {
    property_expression_names =
    {
      temperature = "vulcanus_temperature",
      moisture = "fulgora_moisture",
      aux = "fulgora_aux",
      elevation      = "arrakis_elevation",
      cliffiness     = "cliffiness_basic",
      cliff_elevation= "cliff_elevation_from_elevation",
      ["entity:crude-black-acid:probability"] = "arrakis_crude_black_acid_probability", --AutoplaceControl:probability = Noise expression proba
      ["entity:crude-black-acid:richness"] = "arrakis_crude_black_acid_richness",
      ["entity:petroleum_gas_geyser:probability"] = "arrakis_petroleum_gas_geyser_probability",
      ["entity:petroleum_gas_geyser:richness"] = "arrakis_petroleum_gas_geyser_richness",
    },
    cliff_settings =
    {
      name = "cliff",
      cliff_elevation_0 = 30,
      cliff_elevation_interval = 10,
      cliff_smoothing = 0, -- This is critical for correct cliff placement on the coast.
      richness = 0.85
    },
    ------------------------------------------------------------------------------------------------------------------------------

    autoplace_controls =
    {
      ["crude_black_acid"] = {},
      ["petroleum_gas_geyser"] = {},
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
          ["arrakis-rocky-plateau"] ={},
          ["arrakis-desert"] ={},
          ["arrakis-deep-desert"] ={},
          ["arrakis-deep-desert2"] = {},
          ["arrakis-degbug-tiles"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          --["arrakis-medium-fulgora-rock"] = {},
          --["arrakis-small-fulgora-rock"] = {},
          --["arrakis-tiny-fulgora-rock"] = {},
          --["arrakis-barnacles-decal"] = {},
          --["arrakis-rock-decal-large"] = {},
          --["arrakis-snow-drift-decal"] = {},
          --["arrakis-crater-small"] = {},
          --["arrakis-crater-large"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
          ["crude-black-acid"] = {},
          ["arrakis-huge-volcanic-rock"] = {},
          --["arrakis-big-fulgora-rock"] = {}
        }
      }
    }
  }
end