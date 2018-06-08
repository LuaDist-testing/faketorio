-- This file was automatically generated for the LuaDist project.

package = "faketorio"
version = "1.0.0-1"
-- LuaDist source
source = {
  tag = "1.0.0-1",
  url = "git://github.com/LuaDist-testing/faketorio.git"
}
-- Original source
-- source = {
--     url = "git://github.com/JonasJurczok/Faketorio",
--     tag = "1.0.0",
--     branch = "master"
-- }
description = {
    summary = "Support library for Factorio mod unit testing.",
    detailed = [[
        One problem in modding is the extensive test cycles.
        With every new feature or bug a new test is added. Testing becomes more and more time consuming.

        This library provides helper methods to create automated tests for Factorio mods.
        With this you can speed up development and reduce the amount of time you spend searching
        for bugs you fixed long ago.
    ]],
    homepage = "http://github.com/JonasJurczok/Faketorio",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1",
    "argparse >= 0.5.0",
    "luafilesystem >= 1.7.0",
    "teateatea >= 1.3"
}
build = {
    type = "builtin",
    modules = {
        ["faketorio.runner"] = "src/faketorio/runner.lua",
        ["faketorio.lib"] = "src/faketorio/lib.lua",
        ["faketorio.assemble"] = "src/faketorio/assemble.lua",
        ["faketorio.clean"] = "src/faketorio/clean.lua",
        ["faketorio.helper"] = "src/faketorio/helper.lua",
        ["faketorio.test"] = "src/faketorio/test.lua",
        ["faketorio.ingame.core"] = "src/ingame/core.lua",
        ["faketorio.ingame.functions"] = "src/ingame/functions.lua",
        ["faketorio.json"] = "src/faketorio/json.lua",
    },
    install = {
        bin = {
            ["faketorio"] = "bin/faketorio"
        }
    }
}