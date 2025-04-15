hs.hotkey.bind({"cmd"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind({"cmd"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
hs.hotkey.bind({"cmd"}, "up", function()
  -- Open Gmail Chat
  hs.task.new("/usr/bin/open", nil, {
    "-na", "Google Chrome",
    "--args",
    "--new-window",
    "--app=https://mail.google.com/mail/u/0/#chat/homes"
  }):start()

  -- Open Google Calendar
  hs.task.new("/usr/bin/open", nil, {
    "-na", "Google Chrome",
    "--args",
    "--new-window",
    "--app=https://calendar.google.com"
  }):start()

  hs.alert.show("Opening Chat & Calendar")
end)


