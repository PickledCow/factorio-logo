-- entities.lua

-- local factorio_logo_small = table.deepcopy(data.raw["container"]["factorio-logo-11tiles"])
-- factorio_logo_small.name = "factorio-logo-small"
-- factorio_logo_small.hidden = false
-- factorio_logo_small.hidden_in_factoriopedia = false

-- local factorio_logo_medium = table.deepcopy(data.raw["container"]["factorio-logo-16tiles"])
-- factorio_logo_medium.name = "factorio-logo-medium"
-- factorio_logo_medium.hidden = false
-- factorio_logo_medium.hidden_in_factoriopedia = false

-- local factorio_logo_large = table.deepcopy(data.raw["container"]["factorio-logo-22tiles"])
-- factorio_logo_large.name = "factorio-logo-large"
-- factorio_logo_large.hidden = false
-- factorio_logo_large.hidden_in_factoriopedia = false

-- local wube_space_logo = table.deepcopy(data.raw["simple-entity"]["wube-logo-space-platform"])
-- wube_space_logo.name = "factorio-logo-wube-space"
-- wube_space_logo.localised_name = "Wube Logo (Space Platform)"
-- wube_space_logo.hidden = false
-- wube_space_logo.hidden_in_factoriopedia = false

-- --- return item when mined

local factorio_logo_11tiles = table.deepcopy(data.raw["container"]["factorio-logo-11tiles"])
local factorio_logo_16tiles = table.deepcopy(data.raw["container"]["factorio-logo-16tiles"])
local factorio_logo_22tiles = table.deepcopy(data.raw["container"]["factorio-logo-22tiles"])

local factorio_logo_small = {
    type = "assembling-machine",
    name = "factorio-logo-small",
    show_recipe_icon = false,
    show_recipe_icon_on_map = false,
    icon = "__factorio-logo__/graphics/item-icons/small.png",
    icon_size = factorio_logo_11tiles.icon_size,
    icon_scale = factorio_logo_11tiles.icon_scale,
    flags = {
        "not-rotatable",
        "placeable-player", 
        "player-creation",
        "not-flammable",
        "not-upgradable"
    },
    minable = {mining_time = 2, result = "factorio-logo-small"},
    max_health = factorio_logo_11tiles.max_health,
    dying_explosion = "big-explosion",
    is_military_target = true,
    collision_box = factorio_logo_11tiles.collision_box,
    selection_box = factorio_logo_11tiles.selection_box,
    energy_source = {
      type = "void",
      emissions_per_minute = { pollution = 0 },
    },
    energy_usage = "1W",
    crafting_speed = 1,
    crafting_categories = {"factorio-logo-animation"},
    ingredient_count = 0,
    graphics_set = {
        always_draw_idle_animation = true,
        idle_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/factorio-logo/factorio-logo-11tiles.png",
                    priority = "high",
                    width = 768,
                    height = 256,
                    lines_per_file = 1,
                    scale = 0.5
                }
            }
        }
    },
    render_layer = factorio_logo_11tiles.render_layer
}

local factorio_logo_medium = {
    type = "assembling-machine",
    name = "factorio-logo-medium",
    show_recipe_icon = false,
    show_recipe_icon_on_map = false,
    icon = "__factorio-logo__/graphics/item-icons/medium.png",
    icon_size = factorio_logo_16tiles.icon_size,
    icon_scale = factorio_logo_16tiles.icon_scale,
    flags = {
        "not-rotatable",
        "placeable-player", 
        "player-creation",
        "not-flammable",
        "not-upgradable"
    },
    minable = {mining_time = 2, result = "factorio-logo-medium"},
    max_health = factorio_logo_16tiles.max_health,
    dying_explosion = "big-artillery-explosion",
    is_military_target = true,
    collision_box = factorio_logo_16tiles.collision_box,
    selection_box = factorio_logo_16tiles.selection_box,
    energy_source = {
      type = "void",
      emissions_per_minute = { pollution = 0 },
    },
    energy_usage = "1W",
    crafting_speed = 1,
    crafting_categories = {"factorio-logo-animation"},
    ingredient_count = 0,
    graphics_set = {
        always_draw_idle_animation = true,
        idle_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/factorio-logo/factorio-logo-16tiles.png",
                    priority = "high",
                    width = 1536,
                    height = 512,
                    lines_per_file = 1,
                    scale = 0.5
                }
            }
        }
    },
    render_layer = factorio_logo_16tiles.render_layer
}

local factorio_logo_large = {
    type = "assembling-machine",
    name = "factorio-logo-large",
    show_recipe_icon = false,
    show_recipe_icon_on_map = false,
    icon = "__factorio-logo__/graphics/item-icons/large.png",
    icon_size = factorio_logo_22tiles.icon_size,
    icon_scale = factorio_logo_22tiles.icon_scale,
    flags = {
        "not-rotatable",
        "placeable-player", 
        "player-creation",
        "not-flammable",
        "not-upgradable"
    },
    minable = {mining_time = 2, result = "factorio-logo-large"},
    max_health = factorio_logo_22tiles.max_health,
    dying_explosion = "nuke-explosion",
    is_military_target = true,
    collision_box = factorio_logo_22tiles.collision_box,
    selection_box = factorio_logo_22tiles.selection_box,
    energy_source = {
      type = "void",
      emissions_per_minute = { pollution = 0 },
    },
    energy_usage = "1W",
    crafting_speed = 1,
    crafting_categories = {"factorio-logo-animation"},
    ingredient_count = 0,
    graphics_set = {
        always_draw_idle_animation = true,
        idle_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/factorio-logo/factorio-logo-22tiles.png",
                    priority = "high",
                    width = 1536,
                    height = 512,
                    lines_per_file = 1,
                    scale = 0.5,
                    -- y = 128 -- Offset for some reason idk
                }
            }
        }
    },
    render_layer = factorio_logo_22tiles.render_layer
}


data:extend({factorio_logo_small, factorio_logo_medium, factorio_logo_large})

-- Space age logos

if mods["space-age"] then
        
    local factorio_space_age_logo_small = {
        type = "assembling-machine",
        name = "factorio-space-age-logo-small",
        show_recipe_icon = false,
        show_recipe_icon_on_map = false,
        icon = "__factorio-logo__/graphics/item-icons/space-age-small.png",
        icon_size = factorio_logo_11tiles.icon_size,
        icon_scale = factorio_logo_11tiles.icon_scale,
        flags = {
            "not-rotatable",
            "placeable-player", 
            "player-creation",
            "not-flammable",
            "not-upgradable"
        },
        minable = {mining_time = 2, result = "factorio-space-age-logo-small"},
        max_health = factorio_logo_11tiles.max_health,
        dying_explosion = "big-explosion",
        is_military_target = true,
        collision_box = factorio_logo_11tiles.collision_box,
        selection_box = factorio_logo_11tiles.selection_box,
        energy_source = {
        type = "void",
        emissions_per_minute = { pollution = 0 },
        },
        energy_usage = "1W",
        crafting_speed = 1,
        crafting_categories = {"factorio-logo-animation"},
        ingredient_count = 10,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filenames = {
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/00.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/01.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/02.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/03.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/04.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/05.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/06.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/07.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/08.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/09.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/10.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/11.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/12.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/13.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/14.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-small/15.png"
                        },
                        priority = "high",
                        width = 768,
                        height = 256,
                        lines_per_file = 1,
                        scale = 0.5,
                        frame_count = 16,
                        line_length = 1,

                    }
                }
            }
        },
        render_layer = factorio_logo_11tiles.render_layer
    }

    local factorio_space_age_logo_medium = {
        type = "assembling-machine",
        name = "factorio-space-age-logo-medium",
        show_recipe_icon = false,
        show_recipe_icon_on_map = false,
        icon = "__factorio-logo__/graphics/item-icons/space-age-medium.png",
        icon_size = factorio_logo_16tiles.icon_size,
        icon_scale = factorio_logo_16tiles.icon_scale,
        flags = {
            "not-rotatable",
            "placeable-player", 
            "player-creation",
            "not-flammable",
            "not-upgradable"
        },
        minable = {mining_time = 2, result = "factorio-space-age-logo-medium"},
        max_health = factorio_logo_16tiles.max_health,
        dying_explosion = "big-artillery-explosion",
        is_military_target = true,
        collision_box = {{-7.75, -1.75}, {7.75, 1.75}},
        selection_box = {{-8, -2}, {8, 2}},
        energy_source = {
        type = "void",
        emissions_per_minute = { pollution = 0 },
        },
        energy_usage = "1W",
        crafting_speed = 1,
        crafting_categories = {"factorio-logo-animation"},
        ingredient_count = 10,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filenames = {
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/00.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/01.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/02.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/03.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/04.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/05.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/06.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/07.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/08.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/09.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/10.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/11.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/12.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/13.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/14.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-medium/15.png"
                        },
                        priority = "high",
                        width = 1536,
                        height = 512,
                        lines_per_file = 1,
                        scale = 0.5,
                        frame_count = 16,
                        line_length = 1,

                    }
                }
            }
        },
        render_layer = factorio_logo_16tiles.render_layer
    }

    local factorio_space_age_logo_large = {
        type = "assembling-machine",
        name = "factorio-space-age-logo-large",
        show_recipe_icon = false,
        show_recipe_icon_on_map = false,
        icon = "__factorio-logo__/graphics/item-icons/space-age-large.png",
        icon_size = factorio_logo_22tiles.icon_size,
        icon_scale = factorio_logo_22tiles.icon_scale,
        flags = {
            "not-rotatable",
            "placeable-player", 
            "player-creation",
            "not-flammable",
            "not-upgradable"
        },
        minable = {mining_time = 2, result = "factorio-space-age-logo-large"},
        max_health = factorio_logo_22tiles.max_health,
        dying_explosion = "nuke-explosion",
        is_military_target = true,
        collision_box = {{-10.75, -2.25}, {10.75, 2.25}},
        selection_box = {{-11, -2.5}, {11, 2.5}},
        energy_source = {
        type = "void",
        emissions_per_minute = { pollution = 0 },
        },
        energy_usage = "1W",
        crafting_speed = 1,
        crafting_categories = {"factorio-logo-animation"},
        ingredient_count = 10,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filenames = {
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/00.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/01.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/02.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/03.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/04.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/05.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/06.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/07.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/08.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/09.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/10.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/11.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/12.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/13.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/14.png",
                            "__factorio-logo__/graphics/factorio-space-age-logo-large/15.png"
                        },
                        priority = "high",
                        width = 1536,
                        height = 512,
                        lines_per_file = 1,
                        scale = 0.5,
                        frame_count = 16,
                        line_length = 1,

                    }
                }
            }
        },
        render_layer = factorio_logo_22tiles.render_layer
    }


    data:extend({factorio_space_age_logo_small, factorio_space_age_logo_medium, factorio_space_age_logo_large})
end
