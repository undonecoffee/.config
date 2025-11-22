local ls = require 'luasnip'
local fmta = require('luasnip.extras.fmt').fmta
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets('javascript', {
    ls.snippet(
        { trig = '%s*fn ', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('function <>() {\n}', {
            i(1),
        })
    ),
    ls.snippet(
        { trig = '%s*cn ', wordTrig = false, regTrig = true, snippetType = 'autosnippet' },
        fmta('const <> = ', {
            i(1),
        })
    ),
})
