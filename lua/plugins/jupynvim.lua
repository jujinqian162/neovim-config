return {
    "sheng-tse/jupynvim",
    tag = "v0.4.6",
    lazy = false,
    build = function(plugin)
        dofile(plugin.dir .. "/lua/jupynvim/install.lua").run(plugin)
    end,
    opts = {},
}
