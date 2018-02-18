QuickReloadUI = {}
QuickReloadUI.name = "QuickReloadUI"

-- Addon Initialization
function QuickReloadUI.OnAddOnLoaded(eventCode, addonName)
    if addonName ~= QuickReloadUI.name then
        return
    end

    -- Keybind
    ZO_CreateStringId("SI_BINDING_NAME_RELOAD_UI", "RelodUI")

    -- Init quick menu actions
    if QuickMenu then
        QuickReloadUI.AddQuickMenuAction()
    end
end

-- Adds ReloadUI option to quick menu
function QuickReloadUI.AddQuickMenuAction()
    QuickMenu.RegisterMenuEntry(
        QuickReloadUI.name,
        "reloadui",
        "ReloadUI",
        "/esoui/art/help/help_tabicon_feedback_up.dds",
        "/esoui/art/help/help_tabicon_feedback_up.dds",
        function()
            ReloadUI("ingame")
        end
    )
end

EVENT_MANAGER:RegisterForEvent(QuickReloadUI.name, EVENT_ADD_ON_LOADED, QuickReloadUI.OnAddOnLoaded)
