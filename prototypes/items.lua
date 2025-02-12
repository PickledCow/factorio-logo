
-- items

local item_small = table.deepcopy(data.raw["item"]["wooden-chest"])
item_small.icon = "__factorio-logo__/graphics/item-icons/small.png"
item_small.name = "factorio-logo-small"
item_small.place_result = "factorio-logo-small"
item_small.order = "e[logo]-aa"
item_small.stack_size = 1

local item_medium = table.deepcopy(data.raw["item"]["wooden-chest"])
item_medium.icon = "__factorio-logo__/graphics/item-icons/medium.png"
item_medium.name = "factorio-logo-medium"
item_medium.place_result = "factorio-logo-medium"
item_medium.order = "e[logo]-ab"
item_medium.stack_size = 1

local item_large = table.deepcopy(data.raw["item"]["wooden-chest"])
item_large.icon = "__factorio-logo__/graphics/item-icons/large.png"
item_large.name = "factorio-logo-large"
item_large.place_result = "factorio-logo-large"
item_large.order = "e[logo]-ac"
item_large.stack_size = 1


data:extend({item_small, item_medium, item_large})


if mods["space-age"] then

    local space_age_item_small = table.deepcopy(data.raw["item"]["wooden-chest"])
    space_age_item_small.icon = "__factorio-logo__/graphics/item-icons/space-age-small.png"
    space_age_item_small.name = "factorio-space-age-logo-small"
    space_age_item_small.place_result = "factorio-space-age-logo-small"
    space_age_item_small.order = "e[logo]-ba"
    space_age_item_small.stack_size = 1
    
    local space_age_item_medium = table.deepcopy(data.raw["item"]["wooden-chest"])
    space_age_item_medium.icon = "__factorio-logo__/graphics/item-icons/space-age-medium.png"
    space_age_item_medium.name = "factorio-space-age-logo-medium"
    space_age_item_medium.place_result = "factorio-space-age-logo-medium"
    space_age_item_medium.order = "e[logo]-bb"
    space_age_item_medium.stack_size = 1
    
    local space_age_item_large = table.deepcopy(data.raw["item"]["wooden-chest"])
    space_age_item_large.icon = "__factorio-logo__/graphics/item-icons/space-age-large.png"
    space_age_item_large.name = "factorio-space-age-logo-large"
    space_age_item_large.place_result = "factorio-space-age-logo-large"
    space_age_item_large.order = "e[logo]-bc"
    space_age_item_large.stack_size = 1
    
    -- Animation icon
    local extra_gear = table.deepcopy(data.raw["item"]["iron-gear-wheel"])
    extra_gear.icon = "__factorio-logo__/graphics/item-icons/dummy-craft.png"
    extra_gear.name = "factorio-space-age-logo-dummy-craft"
    extra_gear.order = "e[logo]-ca"
    extra_gear.stack_size = 1


    
    
    data:extend({space_age_item_small, space_age_item_medium, space_age_item_large, extra_gear})
    
end