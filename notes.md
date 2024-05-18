 ## Problem To Solve:
- [ ] lua lsp sumneko加载慢的问题如何解决？
- [x] 卸载goyo插件
- [ ] easymotion存在的光标的问题，无法解决就换成lua版的easymotion
- [ ] 将切换buffer的快捷键改成space-o和space-p，并同步更新到vim
- [x] 首页l快捷键没用
- [ ] ql的文件类型映射q为退出键
- [ ] 首页按下e后，tableline和bufferline未恢复显示 
- [ ] `TODO`无法高亮

## Change List:
2022/08/04, plugin_nvim_cmp.lua, shortcut for go to definition, gf -> gs
2022/12/06, settings.lua, wrap -> nowrap
2022/12/06, keymappings.lua, <leader>s, :w -> :wa
2022/12/06, settings.lua, plugin_dashboard.lua, shortcut for load session, l -> r
2022/12/06, settings.lua, nohlsearch -> hlsearch
2022/12/09, plugin_easymotion.lua, disable "/" search
2023/01/31, keymappings.lua, vsnip-jump-next, '<c-b>' -> '<c-n>' (avoid conflit with tmux)
2023/01/31, keymappings.lua, vsnip-jump-prev, 'null' -> '<c-p>'
2024/01/01, has changed a lot

