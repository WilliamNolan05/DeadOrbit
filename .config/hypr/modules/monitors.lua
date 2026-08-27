------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "2560x1440@165",
    position = "auto",
    scale    = "1.6",
})
hl.workspace_rule({ workspace = "1", persistent = true})
hl.workspace_rule({ workspace = "2", persistent = true})
hl.workspace_rule({ workspace = "3", persistent = true})
hl.workspace_rule({ workspace = "4", persistent = true})
hl.workspace_rule({ workspace = "5", persistent = true})