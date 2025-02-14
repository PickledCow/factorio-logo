-- technology.lua

local regular_prerequisites = {"chemical-science-pack"}
local regular_ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
local regular_cost = 2013

if settings.startup["factorio-logo-cheap-research"].value then
    regular_prerequisites = {"logistic-science-pack"}
    regular_ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
    regular_cost = 100
end

data:extend({
    {
        type = "technology",
        name = "factorio-logo",
        prerequisites = regular_prerequisites,
        icons = {
            {
                icon = "__factorio-logo__/graphics/technology-icon.png",
                icon_size = 352
            }
        },
        unit = {
            count = regular_cost,
            ingredients = regular_ingredients,
            time = 30,
        },
        effects = {
            {type = "unlock-recipe", recipe = "factorio-logo-small"},
            {type = "unlock-recipe", recipe = "factorio-logo-medium"},
            {type = "unlock-recipe", recipe = "factorio-logo-large"}
        }
    }
})


if mods["space-age"] then

    local space_cost = 2024
    
    if settings.startup["factorio-logo-cheap-research"].value then
        space_cost = 200
    end

    data:extend({
        {
            type = "technology",
            name = "factorio-space-age-logo",
            prerequisites = {"factorio-logo", "space-science-pack"},
            icons = {
                {
                    icon = "__factorio-logo__/graphics/technology-space-age-icon.png",
                    icon_size = 352
                }
            },
            unit = {
                count = space_cost,
                ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"space-science-pack", 1}},
                time = 60,
            },
            effects = {
                {type = "unlock-recipe", recipe = "factorio-space-age-logo-small"},
                {type = "unlock-recipe", recipe = "factorio-space-age-logo-medium"},
                {type = "unlock-recipe", recipe = "factorio-space-age-logo-large"},
                {type = "unlock-recipe", recipe = "factorio-space-age-logo-dummy-craft"}
            }
        }
    })

end
