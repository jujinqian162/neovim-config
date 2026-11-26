# Neovim 配置

- Neovim: 使用 `v0.12.6` 稳定版验证；可从 [Neovim Releases](https://github.com/neovim/neovim/releases) 获取。
- Tree-sitter 使用 `nvim-treesitter` 的 `main` 分支。安装或更新解析器需要 `tree-sitter` CLI `0.26.1+`、C 编译器、`curl` 和 `tar`。
- 搜索依赖 `ripgrep`（`rg`）；运行 Pyright 等语言服务器需要 Node.js（本配置建议 20+，可用 `nvm` 管理）。

## 重新上手

1. 在项目目录输入 `nvim .`。在普通模式下，按一次**空格**，稍等就能看到快捷键菜单；也可输入 `:WhichKey <leader>`。
2. `空格 f f` 按文件名找文件；`空格 f g` 搜索当前工作目录下的文件内容。输入关键词，再按回车打开结果。`空格 t r` 则打开左侧文件树。
3. `i` 开始输入；`Esc` 或 `jj` 回到普通模式；`u` 撤销，`Ctrl-r` 重做，`/关键词` 搜索当前文件，`n` 跳到下一处。
4. **切换文件不再自动保存。** 用 `空格 w` 或 `:w` 保存；`空格 q` 或 `:q` 关闭窗口；`:wq` 保存并关闭。
5. 写代码时，`空格 l d` 跳到定义（`Ctrl-o` 跳回），`空格 l h` 查看函数说明。补全可用 `Ctrl-Space` 主动打开，用 `Tab` 接受候选。

## Jupyter Notebook

用 `nvim 文件.ipynb` 直接打开，Jupynvim 显示单元格而不是 JSON。普通 `.py` 文件不受影响。

| 操作 | 按键或命令 |
| --- | --- |
| 上下选择单元格 | `k` / `j` |
| 进入单元格编辑、返回单元格浏览 | `Enter` / `Esc` |
| 运行当前单元格并前进 | `空格 n r` |
| 只运行当前单元格，留在原地 | `:JupynvimRunCell` |
| 下方插入单元格 | `空格 n b` |
| 选择 Python 内核 | `空格 n K`，大写 `K` |
| 保存原 `.ipynb` | `:w` |

运行前等状态提示 `kernel started`。有合适的项目 `.venv` 时，Jupynvim 可以自动选它；如果选错，用 `空格 n K` 切换。网页终端里的图表显示取决于终端支持。

## 快捷键

### Leader

- `mapleader`: `<Space>`（空格键）

> 说明：下文所有 `<leader>` 都代表 `<Space>`。

### 基础

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>w` | 保存 (`:w`) | `lua/core/keymap.lua` |
| Normal | `<leader>q` | 退出 (`:q`) | `lua/core/keymap.lua` |
| Insert | `jj` | 退出插入模式 | `lua/core/keymap.lua` |
| Normal | `J` | 向下快速移动 15 行 | `lua/core/keymap.lua` |
| Normal | `K` | 向上快速移动 15 行 | `lua/core/keymap.lua` |
| Visual | `J` | 选区下移一行（保持选区） | `lua/core/keymap.lua` |
| Visual | `K` | 选区上移一行（保持选区） | `lua/core/keymap.lua` |
| Normal | `<leader>sv` | 垂直分屏 (`<C-w>v`) | `lua/core/keymap.lua` |
| Normal | `<leader>sh` | 水平分屏 (`<C-w>s`) | `lua/core/keymap.lua` |

### 搜索 / 替换

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>fr` | 打开 `grug-far`（搜索/替换 UI） | `lua/core/keymap.lua` |

### 文件 / 查找（Telescope）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>ff` | 查找文件 (`telescope.builtin.find_files`) | `lua/plugins/telescope.lua` |
| Normal | `<leader>fg` | 全局 grep (`telescope.builtin.live_grep`) | `lua/plugins/telescope.lua` |
| Normal | `<leader>fd` | 当前文件内搜索 (`telescope.builtin.current_buffer_fuzzy_find`) | `lua/plugins/telescope.lua` |
| Normal | `<leader>fb` | 列出/切换 buffer (`telescope.builtin.buffers`) | `lua/plugins/telescope.lua` |

### 文件树（nvim-tree）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>tr` | 切换文件树 (`:NvimTreeToggle`) | `lua/plugins/nvim-tree.lua` |

### 终端（toggleterm）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>tt` | 切换浮动终端 (`:ToggleTerm`) | `lua/plugins/toggleterm.lua` |
| Normal | `<leader>th` | 打开/切换水平终端 | `lua/plugins/toggleterm.lua` |
| Terminal | `Esc` `Esc` | 回到普通模式，再用同一个快捷键收起终端 | `lua/plugins/toggleterm.lua` |

### Buffer（bufferline）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>bh` | 上一个 buffer | `lua/plugins/bufferline.lua` |
| Normal | `<leader>bl` | 下一个 buffer | `lua/plugins/bufferline.lua` |
| Normal | `<leader>bd` | 关闭当前 buffer (`:bdelete`) | `lua/plugins/bufferline.lua` |
| Normal | `<leader>bo` | 关闭其它 buffer | `lua/plugins/bufferline.lua` |
| Normal | `<leader>bp` | 选择 buffer（Pick） | `lua/plugins/bufferline.lua` |
| Normal | `<leader>bc` | Pick 关闭 buffer | `lua/plugins/bufferline.lua` |

### LSP（lspsaga）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>lr` | 重命名（Lspsaga rename） | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>lc` | Code Action | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>ld` | 跳转到定义（goto_definition） | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>lh` | 悬浮文档（hover_doc） | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>lR` | Finder（引用/定义等列表） | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>ln` | 下一个诊断 | `lua/plugins/lspsaga.lua` |
| Normal | `<leader>lp` | 上一个诊断 | `lua/plugins/lspsaga.lua` |

### 格式化（none-ls / null-ls）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>lf` | 格式化当前 buffer (`vim.lsp.buf.format()`) | `lua/plugins/none-ls.lua` |

### 快速跳转（hop）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<leader>hp` | 按词跳转（HopWord） | `lua/plugins/hop.lua` |

### Tmux 窗口导航（vim-tmux-navigator）

| 模式 | 快捷键 | 作用 | 来源 |
| --- | --- | --- | --- |
| Normal | `<C-h>` | 切换到左侧 tmux/neovim 窗口 | `lua/plugins/tmux-navigator.lua` |
| Normal | `<C-j>` | 切换到下侧 tmux/neovim 窗口 | `lua/plugins/tmux-navigator.lua` |
| Normal | `<C-k>` | 切换到上侧 tmux/neovim 窗口 | `lua/plugins/tmux-navigator.lua` |
| Normal | `<C-l>` | 切换到右侧 tmux/neovim 窗口 | `lua/plugins/tmux-navigator.lua` |

## 维护

- `:Lazy`：查看插件版本、状态和更新；`:Lazy restore` 按 `lazy-lock.json` 恢复锁定的插件版本。
- `:TSUpdate`：更新 Tree-sitter 解析器；`:checkhealth nvim-treesitter` 检查解析器和 CLI。
- `:Mason`：查看语言服务器和格式化工具，按需安装。已安装的语言服务器会按文件类型自动启用；例如新机器可以用 `:MasonInstall pyright lua-language-server`。
- `:checkhealth vim.lsp`：检查当前语言服务器。`空格 l f` 格式化需要对应工具，可用 `:MasonInstall stylua black clang-format` 安装。
