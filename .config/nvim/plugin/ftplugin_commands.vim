" https://old.reddit.com/r/neovim/comments/16upoc1/favourite_custom_user_commands_that_youve_created/k2o98s1/

if exists('g:plugin_ftplugin')
  finish
endif
let g:plugin_ftplugin = 1

let g:ftplugin_path = get(g:, 'ftplugin_path', "~/.config/nvim/after/ftplugin/")

command Ftplugin       exe printf("e %s.lua",      g:ftplugin_path .. &filetype)
command FtpluginVsplit exe printf("vs %s.lua",     g:ftplugin_path .. &filetype)
command FtpluginSplit  exe printf("sp %s.lua",     g:ftplugin_path .. &filetype)
command FtpluginTab    exe printf("tabnew %s.lua", g:ftplugin_path .. &filetype)
