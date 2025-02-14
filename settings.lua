local hide_wube_requirement = true

if (mods["wubefill"]) then
    hide_wube_requirement = false
end

data:extend({
    {
        type = "bool-setting",
        name = "factorio-logo-simple-recipes",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "factorio-logo-cheap-research",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "factorio-logo-wubefill-recipes",
        setting_type = "startup",
        default_value = true,
        hidden = hide_wube_requirement
    }
})

