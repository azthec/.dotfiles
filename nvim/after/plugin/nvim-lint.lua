require('lint').linters_by_ft = {
  sql = { 'sqlfluff', }
}

local sqlfluff = require('lint').linters.sqlfluff
sqlfluff.args = {
  'lint', '--format=json',
  '--dialect=postgres',
}
vim.keymap.set('n', 'f', function() require('lint').try_lint() end, {})
