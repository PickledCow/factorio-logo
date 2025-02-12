

local recipe_small = {
    type = "recipe",
    name = "factorio-logo-small",
    icon = "__factorio-logo__/graphics/item-icons/small.png",
    order = "e[logo]-aa",
    energy_required = 60,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 1000},
        {type = "item", name = "steel-plate", amount = 1000},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    },
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-small", amount = 1}}
}

local recipe_medium = {
    type = "recipe",
    name = "factorio-logo-medium",
    icon = "__factorio-logo__/graphics/item-icons/medium.png",
    order = "e[logo]-ab",
    energy_required = 120,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 2000},
        {type = "item", name = "steel-plate", amount = 2000},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    },
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-medium", amount = 1}}
}

local recipe_large = {
    type = "recipe",
    name = "factorio-logo-large",
    icon = "__factorio-logo__/graphics/item-icons/large.png",
    order = "e[logo]-ac",
    energy_required = 300,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 5000},
        {type = "item", name = "steel-plate", amount = 5000},
        {type = "item", name = "iron-gear-wheel", amount = 1},
    },
    enabled = false,  -- Unlock via technology
    results = {{type = "item", name = "factorio-logo-large", amount = 1}}
}

data:extend({recipe_small, recipe_medium, recipe_large})



if mods["space-age"] then

    local space_recipe_small = {
        type = "recipe",
        name = "factorio-space-age-logo-small",
        icon = "__factorio-logo__/graphics/item-icons/space-age-small.png",
        order = "e[logo]-ba",
        energy_required = 60,
        ingredients = {
            {type = "item", name = "factorio-logo-small", amount = 1},
            {type = "item", name = "iron-plate", amount = 1000},
            {type = "item", name = "thruster", amount = 10}
        },
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-small", amount = 1}}
    }
    
    local space_recipe_medium = {
        type = "recipe",
        name = "factorio-space-age-logo-medium",
        icon = "__factorio-logo__/graphics/item-icons/space-age-medium.png",
        order = "e[logo]-bb",
        energy_required = 120,
        ingredients = {
            {type = "item", name = "factorio-logo-medium", amount = 1},
            {type = "item", name = "iron-plate", amount = 2000},
            {type = "item", name = "thruster", amount = 20}
        },
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-medium", amount = 1}}
    }
    
    local space_recipe_large = {
        type = "recipe",
        name = "factorio-space-age-logo-large",
        icon = "__factorio-logo__/graphics/item-icons/space-age-large.png",
        order = "e[logo]-bc",
        energy_required = 300,
        ingredients = {
            {type = "item", name = "factorio-logo-large", amount = 1},
            {type = "item", name = "iron-plate", amount = 5000},
            {type = "item", name = "thruster", amount = 50}
        },
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
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 1}
        },
        enabled = false,  -- Unlock via technology
        results = {{type = "item", name = "factorio-space-age-logo-dummy-craft", amount = 1}}
    }
    
    
    data:extend({space_recipe_small, space_recipe_medium, space_recipe_large, space_animation_gear})
    
end
