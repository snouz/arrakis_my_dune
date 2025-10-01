-- NOISE EXPRESSIONS FOR USE IN terrain_tile_definitions.lua, THIS DEFINES TILE SPAWN PROBABILITY
data:extend({
  --[[{
  type = "noise-function",
  name = "geyser_spot_noise",
  parameters = {"seed", "count", "skip_offset", "region_size", "density", "radius", "favorability"},
  expression = "spot_noise{\z
    x = x,\z
    y = y,\z
    seed0 = map_seed,\z
    seed1 = seed,\z
    candidate_spot_count = count,\z
    suggested_minimum_candidate_point_spacing = 128,\z
    skip_span = 3,\z
    skip_offset = skip_offset,\z
    region_size = region_size,\z
    density_expression = density,\z
    spot_quantity_expression = radius * radius,\z
    spot_radius_expression = radius,\z
    hard_region_target_quantity = 0,\z
    spot_favorability_expression = favorability,\z
    basement_value = -1,\z
    maximum_spot_basement_radius = radius * 2}"
  },
  {
  type = "noise-expression",
  name = "custom_sulfuric_acid_geyser_spots",
  expression = "geyser_spot_noise{\z
    seed = 8787,\z
    count = 5,\z
    skip_offset = 0,\z
    region_size = 800,\z
    density = 1,\z
    radius = 30 * sqrt(control:sulfuric_acid_geyser:frequency),\z
    favorability = 1}"
  },
  ]]
  {
    type = "noise-expression",
    name = "arrakis_spot_size",
    expression = 30
  },
  {
    type = "noise-expression",
    name = "arrakis_crude_black_acid_spots",
    expression = "aquilo_spot_noise{seed = 567,\z
                                    count = 4,\z
                                    skip_offset = 0,\z
                                    region_size = 600 + 400 / control:crude_black_acid:frequency,\z
                                    density = 1,\z
                                    radius = arrakis_spot_size * sqrt(control:crude_black_acid:size),\z
                                    favorability = 1}"
  },
  {
    type = "noise-expression",
    name = "arrakis_petroleum_gas_geyser_spots",
    expression = "aquilo_spot_noise{seed = 567,\z
                                    count = 3,\z
                                    skip_offset = 1,\z
                                    region_size = 600 + 400 / control:petroleum_gas_geyser:frequency,\z
                                    density = 1,\z
                                    radius = arrakis_spot_size * 1.2 * sqrt(control:petroleum_gas_geyser:size),\z
                                    favorability = 1}"
  },
  {
    type = "noise-expression",
    name = "arrakis_starting_crude_black_acid",
    expression = "starting_spot_at_angle{angle = 2.26, distance = 30, radius = arrakis_spot_size * 0.5, x_distortion = 0, y_distortion = 0}"
  },
  {
    type = "noise-expression",
    name = "arrakis_starting_petroleum_gas_geyser",
    expression = "starting_spot_at_angle{angle = 2.26, distance = 50, radius = arrakis_spot_size * 0.5, x_distortion = 0, y_distortion = 0}"
  },
  {
    type = "noise-expression",
    name = "arrakis_crude_black_acid_probability",
    expression = "max(arrakis_starting_crude_black_acid * 0.02, min(arrakis_starting_mask, arrakis_crude_black_acid_spots) * 0.015) * (arrakis_rocky_mask2 > arrakis_desert_mask + 0.2)"
  },
  {
    type = "noise-expression",
    name = "arrakis_crude_black_acid_richness",
    expression = "max(arrakis_starting_crude_black_acid * 180000,\z
                      arrakis_crude_black_acid_spots * 144000) * control:crude_black_acid:richness"
  },
  {
    type = "noise-expression",
    name = "arrakis_petroleum_gas_geyser_probability",
    expression = "max(arrakis_starting_petroleum_gas_geyser * 0.02, min(arrakis_starting_mask, arrakis_petroleum_gas_geyser_spots) * 0.012) * (arrakis_rocky_mask2 > arrakis_desert_mask + 0.2)"
  },
  {
    type = "noise-expression",
    name = "arrakis_petroleum_gas_geyser_richness",
    expression = "max(arrakis_starting_petroleum_gas_geyser * 180000,\z
                      arrakis_petroleum_gas_geyser_spots * 144000) * control:petroleum_gas_geyser:richness"
  },
  
  {
    type = "noise-expression",
    name = "arrakis_starting_mask",
    -- exclude random spots from the inner 300 tiles, 80 tile blur
    expression = "clamp((distance - 300) / 40, -1, 1)"
  },
  {
    type = "noise-expression",
    name = "arrakis_starting_island",
    expression = "clamp(starting_spot_at_angle {\
                    angle = 2.26,\
                    distance = 40,\
                    radius = 140,\
                    x_distortion = 20,\
                    y_distortion = 20},0,1)*4*(1 + 0.1 * multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 902, octaves = 2, persistence = 0.6, input_scale = 1/20})"
  },
  {
    type = "noise-expression",
    name = "arrakis_starting_desert",
    expression = "clamp(starting_spot_at_angle {\
                    angle = 2.26,\
                    distance = 40,\
                    radius = 160,\
                    x_distortion = 20,\
                    y_distortion = 20},0,1)*3*(1 + 0.1 * multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 902, octaves = 2, persistence = 0.6, input_scale = 1/25})"
  },

  

  {
  type = "noise-expression",
  name = "arrakis_elevation",
  -- intended_property = "elevation", -- optionnel
  expression = "arrakis_pre_elevation + ((arrakis_rocky_basins < 0) - 0.5) * arrakis_coastline_drop"
  },
  {
  type = "noise-expression",
  name = "arrakis_coastline",
  expression = 80
  },
  {
  type = "noise-expression",
  name = "arrakis_coastline_drop",
  expression = 40
  },
  {
  type = "noise-expression",
  name = "arrakis_rocky_basins",
  expression = "min(arrakis_rocky_mask2, 0.6 - arrakis_rocky_mask2)"
  },
  {
  type = "noise-expression",
  name = "arrakis_pre_elevation",
  expression = "arrakis_rocky_basins * 60 + arrakis_coastline"
  },
  {
  type = "noise-expression",
  name = "arrakis_cliff_elevation",
  expression = "80 + (x + y) * 0.5"
  },

  {
  type = "noise-expression",
  name = "arrakis_rocky_mask", --Premask of big island * small island of Rocky tiles
  expression =
    "(arrakis_desert_mask > arrakis_deep_desert_mask + 0.1) * 3 * arrakis_voronoi2"
  },
  {
  type = "noise-expression",
  name = "arrakis_rocky_mask2", --Rocky Tiles
  expression =
    "(arrakis_desert_mask > arrakis_deep_desert_mask + 0.1) * (arrakis_rocky_mask > arrakis_desert_mask) *\
    (1 + 0.1 * multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 902, octaves = 2, persistence = 0.6, input_scale = 1/20}) "
  },
  {
  type = "noise-expression",
  name = "arrakis_desert_mask", --Desert Tiles
  expression =
    "(arrakis_voronoi * (0.92 + 0.08 * multioctave_noise{\
                x = x, y = y,\
                seed0 = map_seed,\
                seed1 = 902,\
                octaves = 2,\
                persistence = 0.6,\
                input_scale = 1/25\
             }))"
  },
  {
  type = "noise-expression", 
  name = "arrakis_deep_desert_mask", --Premask of deep desert
  expression = "1 - arrakis_desert_mask"
  },
  {
  type = "noise-expression", 
  name = "arrakis_deep_desert_mask2", --DeepDesertTiles just a bit above the deepdesert
  expression = "arrakis_deep_desert_mask - 0.1"
  },
  {
  type = "noise-expression",
  name = "arrakis_decorative_striped_desert",
  expression = "(arrakis_deep_desert_mask2 > arrakis_desert_mask + 0.1) * arrakis_deep_desert_mask2 * (0.80 + 0.2 * abs(sin(x * 0.016 + y * 0.028 + 0.3 * multioctave_noise{\
      x = x, y = y,\
      seed0 = map_seed, seed1 = 7722,\
      octaves = 3,\
      persistence = 0.5,\
      input_scale = 1/120\
  }))) * (1 + 0.1 * multioctave_noise{\
                x = x, y = y,\
                seed0 = map_seed,\
                seed1 = 902,\
                octaves = 1,\
                persistence = 0.6,\
                input_scale = 1/14\
             })" 
  },
  {
  type = "noise-expression",
  name = "arrakis_voronoi", -- Big island of desert
  expression = "abs(voronoi_facet_noise{\z
      x = x,\z
      y = y,\z
      seed0 = map_seed,\z
      seed1 = 'arrakis-archipel',\z
      grid_size = 600,\z
      distance_type = 'euclidean',\z
      jitter = 1\z
    })"
  },
  {
  type = "noise-expression",
  name = "arrakis_voronoi2", -- Smaller Island of rock
  expression = "abs(voronoi_facet_noise{\
      x = x,\
      y = y,\
      seed0 = map_seed,\
      seed1 = 'arrakis-archipel',\
      grid_size = 200,\
      distance_type = 'euclidean',\
      jitter = 1\
    })"
  },
  {
    type = "noise-expression",
    name = "arrakis_rock_huge",
    expression = "(arrakis_rocky_mask2 > arrakis_desert_mask + 0.1) * min(0.2 * (1 - 0.75 * arrakis_rocky_mask2), - 1.2 + 1.2 * min(aux, -0.1 + 1.1 * moisture) + vulcanus_rock_noise + 0.5 * vulcanus_decorative_knockout)"
  },

})