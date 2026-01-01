# Neovim 配置

- Neovim: `NVIM v0.12.0-dev`
- 依赖: `node.js >= 20`（`apt install` 版本可能过低，可使用 `nvm` 管理）

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
| Normal | `<leader>j` | 向下快速移动 20 行 | `lua/core/keymap.lua` |
| Normal | `<leader>k` | 向上快速移动 20 行 | `lua/core/keymap.lua` |
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

## 备注

- `lua/core/autocmd.lua` 里在多个事件里会 `silent! wall` 自动保存，并尝试 `LspStart`。