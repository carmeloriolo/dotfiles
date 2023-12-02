-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not ok then
	vim.cmd("colorscheme default") -- if the above fails, then use default
end

vim.o.guifont = "JetBrainsMono Nerd Font Mono Regular:h12:#h-slight"
