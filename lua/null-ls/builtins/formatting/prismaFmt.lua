local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "prismaFmt",
    method = FORMATTING,
    filetypes = { "prisma" },
    generator_opts = {
        command = "prisma-fmt",
        args = { "format", "-i", "$FILENAME" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
