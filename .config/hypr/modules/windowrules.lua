--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.layer_rule({
    name = "rofi-popup",
    match = { namespace = "rofi" },
    animation = "slide bottom",
    dim_around = true
})

hl.layer_rule({
    name = "notification-animations",
    match = { namespace = "swaync-control-center" },
    animation = "slide right"
})

-- SwayNC Blur & Transparency Rules
hl.layer_rule({
    name = "swaync-blur-control-center",
    match = { namespace = "swaync-control-center" },
    dim_around = true
})

hl.layer_rule({
    name = "swaync-blur-notifications",
    match = { namespace = "swaync-notification-window" },
    dim_around = true
})

hl.window_rule({
  name = "scratchpad-float",
  match = { workspace = "special:special" },
  float = true,
  size = "70% 70%",
  center = true,
})
