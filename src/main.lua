
cc.FileUtils:getInstance():setPopupNotify(false)

require "config"
require "cocos.init"

local isImportlpack = true
xpcall(function()
    require("pack")
end, function()
    local msg = "请在cocos引擎中导入lpack模块 ！！"
    isImportlpack = false
    __G__TRACKBACK__(msg)
end)

if not isImportlpack then
    return
end

require "network.NetMgr"

local function main()
    require("app.MyApp"):create():run()
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
