# Neovim 配置介绍
==========================

## 快捷键

### 基础快捷键

|      快捷键      |                 行为                 |
|:----------------:|:------------------------------------:|
|         J        |                  5j                  |
|         K        |                  5k                  |
|         W        |                  5w                  |
|         B        |                  5b                  |
|        gh        |                到行首                |
|        gl        |                到行尾                |
|        ,;        |          插入模式下行尾增加;         |
|        ga        | last changed in current buffer(file) |
|       `C-h`      |            插入模式下左移            |
|       `C-l`      |            插入模式下右移            |
|       `C-j`      |            插入模式下下移            |
|       `C-k`      |            插入模式下上移            |
|       `Up`       |            命令栏靠近底部            |
|      `Down`      |            命令栏远离底部            |
|      `Left`      |              左侧栏变窄              |
|      `Right`     |              左侧栏变宽              |
| `leader` `enter` |               清除高亮               |
| `leader` `space` |  Jump to the next '<++>' and Edit it |
|     `leader`A    |              Select All              |
|     `leader`Y    |               Copy All               |
|     `leader`P    |          Paste From CopyAll          |
|     `leader`i    |            Insert after (            |
|     `leader`q    |           Quit and Not save          |
|    `leader`cu    |               转为大写               |
|    `leader`cl    |               转为小写               |
|    `leader`vi    |           快速打开vimrc文件          |
|    `leader`vs    |           重新加载vimrc文件          |
|    `leader`tu    |                New tab               |
|     `leader`s    |                 save                 |
|    `leader`wj    |        Cursor to below window        |
|    `leader`wk    |          Cursor to up window         |
|    `leader`wh    |         Cursor to left window        |
|    `leader`wl    |        Cursor to right window        |
|    `leader`wq    |             Quit and Save            |
|    `leader`sj    |   split below and go to this split   |
|    `leader`sk    |     split up and go to this split    |
|    `leader`sh    |    split left and go to this split   |
|    `leader`sl    |   split right and go to this split   |

### 插件

+ packer

  |      命令     | 快捷键 |             行为             |
  |:-------------:|:------:|:----------------------------:|
  |   PackerSync  |        | 插件同步(安装、清理、更新等) |
  | PackerInstall |        |           插件安装           |
  |  PackerUpdate |        |           插件更新           |
  |  PackerClean  |        |           插件清理           |

+ telescope/telescope-file-browser

  |          命令          |   快捷键   |          行为         |
  |:----------------------:|:----------:|:---------------------:|
  |  Telescope find_files  | `leader`ff |       Find File       |
  |   Telescope live_grep  | `leader`fw |       Find Word       |
  |   Telescope oldfiles   | `leader`fr | Recently opened files |
  | Telescope file_browser | `leader`fb |      File Browser     |
  |     Telescope marks    | `leader`fm |       File Marks      |
  |   Telescope jumplist   | `leader`fj |  Telescope jump list  |

+ bufferline

  |              命令             |       快捷键      |           行为          |
  |:-----------------------------:|:-----------------:|:-----------------------:|
  | BufferLineGoToBuffer [number] | `leader`b[number] | go buffer[number] (0-9) |
  |         BufferLinePick        |     `leader`bg    |      BufferLinePick     |
  |           bdelete %           |     `leader`bc    |       close buffer      |
  |      BufferLinePickClose      |     `leader`bp    |   BufferLinePickClose   |
  |      BufferLineCloseLeft      |     `leader`bo    |    close other buffer   |
  |      BufferLineCyclePrev      |         H         |   BufferLineCyclePrev   |
  |      BufferLineCycleNext      |         J         |   BufferLineCycleNext   |

+ nvim-tree

  |      命令      |   快捷键  |        行为        |
  |:--------------:|:---------:|:------------------:|
  | NvimTreeToggle | `leader`e | open/close browser |

+ markdown相关

  |              命令             |   快捷键   |             行为             |
  |:-----------------------------:|:----------:|:----------------------------:|
  | mdip#MarkdownClipboardImage() |   Ctrl-p   |      粘贴剪切板中的图片      |
  |        MarkdownPreview        |     ,r     |           开启预览           |
  |      MarkdownPreviewStop      |     ,rs    |           关闭预览           |
  |          GenTocMarked         |    ,gtc    |           生成目录           |
  |           UpdateToc           |    ,utc    |           更新目录           |
  |        TableModeToggle        |     ,tm    |          表格格式化          |
  |               无              |     zr     |   降低整个缓冲区的折叠级别   |
  |               无              |     zR     |         打开所有折叠         |
  |               无              |     zm     |   增加整个缓冲区的折叠级别   |
  |               无              |     zM     |         一路折叠一切         |
  |               无              |     za     |     打开你光标所在的折叠     |
  |               无              |     zA     | 递归地打开你的光标所在的折叠 |
  |               无              |     zc     |      关闭光标所在的折叠      |
  |               无              |     zC     |    递归关闭光标所在的折叠    |
  |             Vista             | Ctrl-Alt-l |           开启目录           |

+ undotree

  |      命令      | 快捷键 |     行为     |
  |:--------------:|:------:|:------------:|
  | UndotreeToggle |  `F5`  | 打开修改历史 |
