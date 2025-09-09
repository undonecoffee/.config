local ls = require 'luasnip'
local fmta = require('luasnip.extras.fmt').fmta
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node

ls.add_snippets('typst', {
    ls.snippet(
        { trig = '^%s*init', wordTrig = false, regTrig = true },
        fmta(
            [[#let title = "<>"
#set page(height: 1500pt)
#show heading: set text(navy)
#align(center)[
  = #title
  Cameron Wilcox \
  #datetime.today().display("[month]-[day]") \ \
]
#show heading: set text(black)]],
            { i(1) }
        )
    ),
    ls.snippet(
        { trig = '^qa', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta(
            [[
#strong[<>] \
#h(2em) <> \
]],
            {
                i(1),
                i(2),
            }
        )
    ),

    ls.snippet({ trig = '^%s*cent', wordTrig = false, regTrig = true }, fmta('#align(center)[\n  <>\n]', { i(1) })),
})
