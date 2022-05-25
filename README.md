# This is my configuration of neovim with lua
Why transfer to Neovim from Vim? Because my Vim using YouCompleteMe and Tagbar
is unbearablly slow in my laptop. Especially when I change buffer with `CTRL+n`
and `CTRL+p`. Maybe it is because my laptop is trash?

I am looking for a minimal setting for my vim editor. I need it to response
quicklly. Now it is a hard work for me.

I don't want to waste too much time to configure my Vim/Neovim like before. I
would like to use the time to coding!

## Basic Shortcut
Refer from `keymappings.lua`.  
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

## Plugin Shortcuts
Refer from `keymappings.lua`, `plugin_*.lua`, `init.lua`.  

### Dashboard(dashboard-nvim)
| shortcut | function       |
| :-:      | :-:            |
| ,h       | open home page |
### File Explorer(nvim-tree.lua)
| shortcut | function         |
| :-:      | :-:              |
| ,n       | toggle file tree |
### Symbol Outline(symbols-outline.nvim)
| shortcut | function              |
| :-:      | :-:                   |
| ,t       | toggle symbol outline |
### Fuzzy Finder(fzf.vim/fzf.lua)
| shortcut | function            |
| :-:      | :-:                 |
| ,fm      | find mru file       |
| ,ff      | find file under CWD |
| ,fb      | find buffer         |
### Text Align(tabular)
| shortcut | function               |
| :-:      | :-:                    |
| ,/x      | align by character `x` |
| ,///     | align by `//`          |
### Easymotion(vim-easymotion)
| shortcut | function                         |
| :-:      | :-:                              |
| / or ?   | enter find mode                  |
| ;w       | easymotion in word head          |
| ;e       | easymotion in word tail          |
| ;f       | easymotion in specific char      |
| ;j       | easymotion in line               |
| ;;w      | easymotion forward in word head  |
| ;;b      | easymotion backward in word head |
| ;;e      | easymotion forward in word tail  |
### Commentary(vim-commentary)
| shortcut  | function                |
| :-:       | :-:                     |
| gc+motion | comment the field moved |
| gcc       | comment a line          |
| gcap      | comment a block         |
| gcu       | remove comment          |
### Surround(vim-surround)
| shortcut | function                         |
| :-:      | :-:                              |
| ds'      | delete '' (can extend)           |
| ysiw'    | add '' arround word (can extend) |
| cs'"     | change '' to "" (can extend)     |
### Auto-pairs(auto-pairs)
| shortcut | function                             |
| :-:      | :-:                                  |
| ALT+b    | back insert bracket                  |
| ALT+e    | put the content behind into brackets |
| ALT+n    | jump to next bracket                 |
### Code Reference(nvim-cmp)
| shortcut | function                              |
| :-:      | :-:                                   |
| gd       | jump to declaration                   |
| gf       | jump to definition                    |
| gi       | jump to implementation                |
| gr       | jump to reference                     |
| [/]d     | jump to previous/next error           |
| K        | open a hover window for documentation |
### Snippet(vim-vsnip)
| shortcut | function                    |
| :-:      | :-:                         |
| CTRL+x   | snippet expand              |
| CTRL+b   | jump to next snippet region |
| CTRL+l   | <unknown>                   |
### glow(glow.vim)
| shortcut | function                    |
| :-:      | :-:                         |
| gl       | use glow to preview md file |
### goyo(goyo.vim) 
| shortcut | function                                     |
| :-:      | :-:                                          |
| gy       | toggle a write room for md file and txt file |
### Terminal(FTerm.nvim)
| shortcut | function        |
| :-:      | :-:             |
| CTRL+\\  | toggle terminal |
### Region Selection(vim-expand-region)
| shortcut | function      |
| :-:      | :-:           |
| +        | expand region |
### Function Shortcuts
| shortcut | function                                                    |
| :-:      | :-:                                                         |
| F2       | code formattion for c/cpp, python                           |
| F5       | compile c/cpp file; run python file; preview md file on web |
| F6       | run binary file come from c/cpp                             |
| F8       | compile and run c/cpp file                                  |

## Plugin List
🚧Under Construction.🚧

## Screenshots
#### Dashboard
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/1.png)
#### File explorer
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/2.png)
#### Symbols outline
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/3.png)
#### Fuzzy finder
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/4.png)
#### Write room
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/5.png)
#### Markdown previewer
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/6.png)
#### Terminal
![screenshot](https://github.com/Mengbys/nvim/blob/main/images/7.png)
