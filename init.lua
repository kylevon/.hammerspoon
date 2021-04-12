local function directoryLaunchKeyRemap(mods, key, dir)
    local mods = mods or {}
    hs.hotkey.bind(mods, key, function()
        local shell_command = "open " .. dir
        hs.execute(shell_command)
    end)
end

directoryLaunchKeyRemap({"alt, ctrl"}, "1", "/Users/Kyle/Downloads") 
directoryLaunchKeyRemap({"alt, ctrl"}, "2", "/Users/kyle/Movies") 
directoryLaunchKeyRemap({"alt, ctrl"}, "3", "/Users/Kyle/Documents") 
directoryLaunchKeyRemap({"alt, ctrl"}, "4", "/Users/Kyle/Documents/Clases") 
directoryLaunchKeyRemap({"alt, ctrl"}, "5", "/Users/Kyle/Documents/Clases/IPRE") 
directoryLaunchKeyRemap({"alt, ctrl"}, "6", "") 
directoryLaunchKeyRemap({"alt, ctrl"}, "7", "") 
directoryLaunchKeyRemap({"alt, ctrl"}, "8", "") 
directoryLaunchKeyRemap({"alt, ctrl"}, "9", "") 
directoryLaunchKeyRemap({"alt, ctrl"}, "0", "") 

hs.hotkey.bind({"alt, ctrl"}, "q", function()
    local app = hs.application.get("discord")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"discord", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("discord")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "z", function()
    local app = hs.application.get("zoom.us")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"zoom.us", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("zoom.us")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "w", function()
    local app = hs.application.get("WhatsApp")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"WhatsApp", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("WhatsApp")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "e", function()
    local app = hs.application.get("Telegram")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Telegram", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Telegram")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "c", function()
    hs.execute [[R]]
end)

hs.hotkey.bind({"alt, ctrl"}, "r", function()
    local app = hs.application.get("Slack")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Slack", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Slack")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "f", function()
    local app = hs.application.get("Preview")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Preview", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Preview")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "v", function()
    local app = hs.application.get("FileZilla")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"FileZilla", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("FileZilla")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "t", function()
    local app = hs.application.get("kitty")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"kitty", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("kitty")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "y", function()
    hs.execute [[open -n /Applications/Google\ Chrome.app --args --"profile-directory"="Default" ]]
end)

hs.hotkey.bind({"alt, ctrl"}, "u", function()
    hs.execute [[open -n /Applications/Google\ Chrome.app --args --"profile-directory"="Profile 1" ]]
end)

hs.hotkey.bind({"alt, ctrl"}, "j", function()
    local app = hs.application.get("Google Chrome")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Google Chrome", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Google Chrome")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "j", function()
    local app = hs.application.get("Google Chrome")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Google Chrome", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Google Chrome")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "m", function()
    local app = hs.application.get("Mathematica")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Mathematica", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Mathematica")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "k", function()
    local app = hs.application.get("qutebrowser")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"qutebrowser", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("qutebrowser")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "-", function()
    local app = hs.application.get("Calendar")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Calendar", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Calendar")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "'", function()
    local app = hs.application.get("Anki")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Anki", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Anki")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "]", function()
    local app = hs.application.frontmostApplication()
    if app then
        local windows_f = hs.window.filter.new(app:name())
        local windows = windows_f:getWindows(hs.window.filter.sortByFocusedLast)
        if windows[#windows] then
            windows[#windows]:focus()
        end
    else
        hs.application.launchOrFocus("Google Chrome")
    end
end)

hs.hotkey.bind({"alt, ctrl"}, "=", function()
    local app = hs.application.get("Trello")
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"Trello", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Trello")
    end
end)
