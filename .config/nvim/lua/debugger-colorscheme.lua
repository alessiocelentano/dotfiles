local M = {}

function M.setup()
  vim.cmd("hi default link DapUIVariable Normal")
  vim.cmd("hi default DapUIScope guifg=#61AFEF")
  vim.cmd("hi default DapUIType guifg=#C670DD")
  vim.cmd("hi default DapUIDecoration guifg=#61AFEF")
  vim.cmd("hi default DapUIThread guifg=#98C379")
  vim.cmd("hi default DapUIStoppedThread guifg=#61AFEF")
  vim.cmd("hi default link DapUIFrameName Normal")
  vim.cmd("hi default DapUISource guifg=#C670DD")
  vim.cmd("hi default DapUILineNumber guifg=#61AFEF")
  vim.cmd("hi default DapUIFloatBorder guifg=#61AFEF")
  vim.cmd("hi default DapUIWatchesEmpty guifg=#E86671")
  vim.cmd("hi default DapUIWatchesValue guifg=#98C379")
  vim.cmd("hi default DapUIWatchesError guifg=#E86671")
  vim.cmd("hi default DapUIBreakpointsPath guifg=#61AFEF")
  vim.cmd("hi default DapUIBreakpointsInfo guifg=#98C379")
  vim.cmd("hi default DapUIBreakpointsCurrentLine guifg=#98C379 gui=bold")
  vim.cmd("hi default link DapUIBreakpointsLine DapUILineNumber")
end

vim.cmd([[
  augroup DAPUIRefreshHighlights
    autocmd!
    autocmd ColorScheme * lua require('highlights').setup()
  augroup END
]])

return M
