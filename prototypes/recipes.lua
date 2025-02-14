local small_cost = 1000
local medium_cost = 2000
local large_cost = 5000

local small_thurster_cost = 10
local medium_thurster_cost = 20
local large_thurster_cost = 50


if settings.startup["factorio-logo-simple-recipes"].value then
    small_cost = 100
    medium_cost = 200
    large_cost = 500
    
    small_thurster_cost = 1
    medium_thurster_cost = 2
    large_thurster_cost = 5
end



local category = "crafting"

local small_ingredients = {
    {type = "item", name = "copper-plate", amount = small_cost},
    {type = "item", name = "steel-plate", amount = small_cost},
    {type = "item", name = "iron-gear-wheel", amount = 1},
}
local medium_ingredients = {
    {type = "item", name = "copper-plate", amount = medium_cost},
    {type = "item", name = "steel-plate", amount = medium_cost},
    {type = "item", name = "iron-gear-wheel", amount = 1},
}
local large_ingredients = {
    {type = "item", name = "copper-plate", amount = large_cost},
    {type = "item", name = "steel-plate", amount = large_cost},
    {type = "item", name = "iron-gear-wheel", amount = 1},
}

if mods["wubefill"] and settings.startup["factorio-logo-wubefill-recipes"].value then
    category = "crafting-with-fluid"

    small_ingredients = {
        {type = "fluid", name = "wube", amount = small_cost},
        {type = "item", name = "copper-plate", amount = small_cost},
        {type = "item", name = "steel-plate", amount = small_cost},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    }
    medium_ingredients = {
        {type = "fluid", name = "wube", amount = medium_cost},
        {type = "item", name = "copper-plate", amount = medium_cost},
        {type = "item", name = "steel-plate", amount = medium_cost},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    }
    large_ingredients = {
        {type = "fluid", name = "wube", amount = large_cost},
        {type = "item", name = "copper-plate", amount = large_cost},
        {type = "item", name = "steel-plate", amount = large_cost},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    }
end


local recipe_small = {
    type = "recipe",
    name = "factorio-logo-small",
    icon = "__factorio-logo__/graphics/item-icons/small.png",
    order = "e[logo]-aa",
    category = category,
    energy_required = 60,
    ingredients = small_ingredients,
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-small", amount = 1}}
}

local recipe_medium = {
    type = "recipe",
    name = "factorio-logo-medium",
    icon = "__factorio-logo__/graphics/item-icons/medium.png",
    order = "e[logo]-ab",
    category = category,
    energy_required = 120,
    ingredients = medium_ingredients,
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-medium", amount = 1}}
}

local recipe_large = {
    type = "recipe",
    name = "factorio-logo-large",
    icon = "__factorio-logo__/graphics/item-icons/large.png",
    order = "e[logo]-ac",
    category = category,
    energy_required = 300,
    ingredients = large_ingredients,
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-large", amount = 1}}
}

data:extend({recipe_small, recipe_medium, recipe_large})

if mods["space-age"] then

    local space_small_ingredients = {
        {type = "item", name = "factorio-logo-small", amount = 1},
        {type = "item", name = "iron-plate", amount = small_cost},
        {type = "item", name = "thruster", amount = small_thurster_cost}
    }
    
    local space_medium_ingredients = {
        {type = "item", name = "factorio-logo-medium", amount = 1},
        {type = "item", name = "iron-plate", amount = medium_cost},
        {type = "item", name = "thruster", amount = medium_thurster_cost}
    }
    
    local space_large_ingredients = {
        {type = "item", name = "factorio-logo-large", amount = 1},
        {type = "item", name = "iron-plate", amount = large_cost},
        {type = "item", name = "thruster", amount = large_thurster_cost}
    }

    if mods["wubefill"] and settings.startup["factorio-logo-wubefill-recipes"].value then
        
        space_small_ingredients = {
            {type = "fluid", name = "wube", amount = small_cost},
            {type = "item", name = "factorio-logo-small", amount = 1},
            {type = "item", name = "iron-plate", amount = small_cost},
            {type = "item", name = "thruster", amount = small_thurster_cost}
        }
        
        space_medium_ingredients = {
            {type = "fluid", name = "wube", amount = medium_cost},
            {type = "item", name = "factorio-logo-medium", amount = 1},
            {type = "item", name = "iron-plate", amount = medium_cost},
            {type = "item", name = "thruster", amount = medium_thurster_cost}
        }
        
        space_large_ingredients = {
            {type = "fluid", name = "wube", amount = large_cost},
            {type = "item", name = "factorio-logo-large", amount = 1},
            {type = "item", name = "iron-plate", amount = large_cost},
            {type = "item", name = "thruster", amount = large_thurster_cost}
        }
    end


    local space_recipe_small = {
        type = "recipe",
        name = "factorio-space-age-logo-small",
        icon = "__factorio-logo__/graphics/item-icons/space-age-small.png",
        order = "e[logo]-ba",
        category = category,
        energy_required = 60,
        ingredients = space_small_ingredients,
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-small", amount = 1}}
    }
    
    local space_recipe_medium = {
        type = "recipe",
        name = "factorio-space-age-logo-medium",
        icon = "__factorio-logo__/graphics/item-icons/space-age-medium.png",
        order = "e[logo]-bb",
        category = category,
        energy_required = 120,
        ingredients = space_medium_ingredients,
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-medium", amount = 1}}
    }
    
    local space_recipe_large = {
        type = "recipe",
        name = "factorio-space-age-logo-large",
        icon = "__factorio-logo__/graphics/item-icons/space-age-large.png",
        order = "e[logo]-bc",
        category = category,
        energy_required = 300,
        ingredients = space_large_ingredients,
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-large", amount = 1}}
    }

    local space_animation_gear = {
        type = "recipe",
        name = "factorio-space-age-logo-dummy-craft",
        icon = "__factorio-logo__/graphics/item-icons/dummy-craft.png",
        hide_from_player_crafting = true,
        category = "factorio-logo-animation",
        order = "e[logo]-ca",
        energy_required = 6000000000000000000, -- Never finish
        ingredients = {{type = "item", name = "iron-gear-wheel", amount = 1}},
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-dummy-craft", amount = 1}}
    }
    
    
    data:extend({space_recipe_small, space_recipe_medium, space_recipe_large, space_animation_gear})
    
end
