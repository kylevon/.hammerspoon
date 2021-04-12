local function directoryLaunchKeyRemap(mods, key, dir)
    local mods = mods or {}
    hs.hotkey.bind(mods, key, function()
        local shell_command = "open " .. dir
        hs.execute(shell_command)
    end)
end

local function activateOrLaunch(app)
    local app = hs.application.get(app)
    if app then
        if not app:mainWindow() then
            app:selectMenuItem({app, "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus(app)
    end
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
    activateOrLaunch("discord")
end)

hs.hotkey.bind({"alt, ctrl"}, "z", function()
    activateOrLaunch("zoom.us")
end)

hs.hotkey.bind({"alt, ctrl"}, "w", function()
    activateOrLaunch("WhatsApp")
end)

hs.hotkey.bind({"alt, ctrl"}, "e", function()
    activateOrLaunch("Telegram")
end)

hs.hotkey.bind({"alt, ctrl"}, "c", function()
    hs.execute [[R]]
end)

hs.hotkey.bind({"alt, ctrl"}, "r", function()
    activateOrLaunch("Slack")
end)

hs.hotkey.bind({"alt, ctrl"}, "f", function()
    activateOrLaunch("Preview")
end)

hs.hotkey.bind({"alt, ctrl"}, "v", function()
    activateOrLaunch("FileZilla")
end)

hs.hotkey.bind({"alt, ctrl"}, "t", function()
    activateOrLaunch("kitty")
end)

hs.hotkey.bind({"alt, ctrl"}, "y", function()
    hs.execute [[open -n /Applications/Google\ Chrome.app --args --"profile-directory"="Default" ]]
end)

hs.hotkey.bind({"alt, ctrl"}, "u", function()
    hs.execute [[open -n /Applications/Google\ Chrome.app --args --"profile-directory"="Profile 1" ]]
end)

hs.hotkey.bind({"alt, ctrl"}, "j", function()
    activateOrLaunch("Google Chrome")
end)

hs.hotkey.bind({"alt, ctrl"}, "m", function()
    activateOrLaunch("Mathematica")
end)

hs.hotkey.bind({"alt, ctrl"}, "k", function()
    activateOrLaunch("qutebrowser")
end)

hs.hotkey.bind({"alt, ctrl"}, "-", function()
    activateOrLaunch("Calendar")
end)

hs.hotkey.bind({"alt, ctrl"}, "'", function()
    activateOrLaunch("Anki")
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
    activateOrLaunch("Trello")
end)
