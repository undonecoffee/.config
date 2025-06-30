-- re (register)
--    ti (tick)
--    st (step)
--    gui (test gui)
-- stt (setTimeout)

local ls = require 'luasnip'
local fmta = require('luasnip.extras.fmt').fmta
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node

ls.add_snippets('javascript', {
    ls.snippet(
        { trig = '%s*reti', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('register("tick", () =>> {\n    <>\n})', {
            i(1),
        })
    ),
    ls.snippet(
        { trig = '%s*rest', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('register("step", () =>> {\n}).setFps(<>)', {
            i(1),
        })
    ),
    ls.snippet(
        { trig = '%s*regui', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('register("renderOverlay", () =>> {\n    new Text("&etest!", 400, 230).setShadow(true).draw()\n})', {})
    ),
    ls.snippet(
        { trig = '(%s*)(.+)stt', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('<>setTimeout(() =>> <>, <>)', {
            f(function(args, snip)
                return snip.captures[1] or ''
            end),
            f(function(args, snip)
                return snip.captures[2] or ''
            end),
            i(1),
        })
    ),
})
