-- technology.lua

data:extend({
    {
        type = "technology",
        name = "factorio-logo",
        prerequisites = {"chemical-science-pack"},
        icons = {
            {
                icon = "__factorio-logo__/graphics/technology-icon.png",
                icon_size = 352
            }
        },
        unit = {
            count = 2013,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
            time = 60,
        },
        effects = {
            {type = "unlock-recipe", recipe = "factorio-logo-small"},
            {type = "unlock-recipe", recipe = "factorio-logo-medium"},
            {type = "unlock-recipe", recipe = "factorio-logo-large"}
        }
    }
})


if mods["space-age"] then

    data:extend({
        {
            type = "technology",
            name = "factorio-space-age-logo",
            prerequisites = {"factorio-logo"},
            icons = {
                {
                    icon = "__factorio-logo__/graphics/technology-space-age-icon.png",
                    icon_size = 352
                }
            },
            unit = {
                count = 2024,
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
