# This is my configuration of neovim with lua
Why transfer to Neovim from Vim? Because my Vim using YouCompleteme and Tagbar
is unbearablly slow in my laptop. Especially when I change buffer with CTRL+n
and CTRL+p. Maybe it is because my laptop is trash?

I am looking for a minimal setting for my vim editor. I need it to response
quicklly. Now it is a hard work for me.

I don't want to waste too much time to configure my Vim/Neovim like before. I
would like to use the time to coding!

## Most Used Shortcut
| shortcut                | function                             |
| :-:                     | :-:                                  |
| ,                       | leader key                           |
| CTRL+n/p                | jump to next/previous buffer         |
| ,d                      | close current buffer                 |
| CTRL+j/k/h/l            | window navigation                    |
| CTRL+down/up/right/left | window moving                        |
| ,e/q                    | jump to next/previous tabpage        |
| ,w                      | close current tabpage                |
| ,,y                     | yank to clipboard                    |
| ,,ay                    | yank all to clipboard                |
| ,,p                     | paste clipboard behind               |
| ,,P                     | paste clipboard front                |
| ,s                      | save to file                         |
| ,cd                     | move CWD to current file's directory |
| ,h                      | open home page                       |
| ,fm                     | find mru file                        |
| ,ff                     | find file under CWD                  |
| ,fb                     | find buffer                          |
| ,/x                     | align by x                           |
| ,///                    | align by '//'                        |
| gc+motion               | comment the field moved              |
| gcc                     | comment a line                       |
| gcap                    | comment a block                      |
| gcu                     | remove comment                       |
| / or ?                  | enter find mode                      |
| ;w                      | easymotion in word head              |
| ;e                      | easymotion in word tail              |
| ;f                      | easymotion in specific char          |
| ;j                      | easymotion in line                   |
| ;;w                     | easymotion forward in word head      |
| ;;b                     | easymotion backward in word head     |
| ;;e                     | easymotion forward in word tail      |
| gd                      | jump to declaration                  |
| gf                      | jump to definition                   |
| gi                      | jump to implementation               |
| [/]d                    | jump to previous/next error          |
| ALT+b                   | back insert bracket                  |
| ALT+e                   | put the content behind into brackets |
| ALT+n                   | jump to next bracket                 |
| ds'                     | delete '' (can extend)               |
| ysiw'                   | add '' arround word (can extend)     |
| cs'"                    | change '' to "" (can extend)         |

## Other Shortcuts
(under construction)

## Some different plugins installed in my Neovim
+ [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
+ [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
+ [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
+ [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)

## Screenshot
![screenshot](https://github.com/Mengbys/nvim/images/1.png)
