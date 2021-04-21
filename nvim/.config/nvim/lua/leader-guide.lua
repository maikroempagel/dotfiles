local mk = require('helpers').mapkey

mk('n', '<leader>', ":<c-u>LeaderGuide '<leader>'<CR>", { silent = true })
mk('v', '<leader>', ":<c-u>LeaderGuideVisual '<leader>'<CR>", { silent = true })
