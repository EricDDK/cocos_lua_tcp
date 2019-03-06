
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    print("============== test start =============")

    -- 尝试连接 127.0.0.1:19810
    cc.NetMgr:getInstance():connect("127.0.0.1", "19810")
end

return MainScene
