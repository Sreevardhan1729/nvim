# LSP Setup Guide for Your Neovim Config

## 🎉 What Was Added

I've added LSP (Language Server Protocol) support to your Neovim configuration with the following files:

1. **`lua/zion/plugins/lsp/mason.lua`** - LSP installer and manager
2. **`lua/zion/plugins/lsp/lspconfig.lua`** - LSP configuration and keybindings
3. **Updated `lua/zion/plugins/nvim-cmp.lua`** - Added LSP completion source

## 📦 Language Servers Configured

The following language servers will be automatically installed for your languages:

- **C/C++**: `clangd`
- **JavaScript/TypeScript**: `ts_ls` (formerly tsserver)
- **React/JSX**: `ts_ls` (handles React automatically)
- **HTML**: `html`
- **CSS**: `cssls`
- **Python**: `pyright`
- **Lua**: `lua_ls` (for editing your Neovim config)

## 🚀 How to Install

1. **Restart Neovim**:
   ```bash
   nvim
   ```

2. **Wait for plugins to install** - Lazy.nvim will automatically install the new plugins

3. **Open Mason** to verify language servers are installed:
   ```
   :Mason
   ```
   You should see all the language servers listed above being installed.

4. **That's it!** Open any file (`.cpp`, `.js`, `.py`, etc.) and LSP will start automatically.

## ⌨️ LSP Keybindings

Once LSP is active in a file, you can use these keybindings:

### Navigation
- `gd` - Go to definition (using Telescope)
- `gD` - Go to declaration
- `gR` - Show all references (using Telescope)
- `gi` - Go to implementation
- `gt` - Go to type definition

### Documentation & Diagnostics
- `K` - Show hover documentation (press on a function/variable)
- `<leader>d` - Show diagnostics for current line
- `<leader>D` - Show all diagnostics in file
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic

### Code Actions
- `<leader>ca` - Show code actions (quick fixes, refactoring)
- `<leader>rn` - Rename symbol (smart rename across files)
- `<leader>rs` - Restart LSP server

## 🔍 How LSP Works

```
┌─────────────┐      ┌──────────────┐      ┌─────────────┐
│   Neovim    │◄────►│ LSP Client   │◄────►│   Language  │
│   (Editor)  │      │ (lspconfig)  │      │   Server    │
└─────────────┘      └──────────────┘      └─────────────┘
                            │
                            ▼
                     ┌──────────────┐
                     │   nvim-cmp   │
                     │ (Completion) │
                     └──────────────┘
```

1. **Language Server** - External program that understands your code
2. **LSP Client** - Neovim's built-in LSP client (configured by lspconfig)
3. **Mason** - Manages installation of language servers
4. **nvim-cmp** - Shows completions from LSP

## 🛠️ Testing LSP

### Test C++
```bash
nvim test.cpp
```
Type:
```cpp
#include <iostream>

int main() {
    std::cout << "Hello" << std::endl;
    return 0;
}
```
- Hover over `std::cout` and press `K` to see documentation
- Type `std::` and you should see completions

### Test JavaScript/React
```bash
nvim test.jsx
```
Type:
```jsx
import React from 'react';

function App() {
    return <div>Hello</div>;
}
```
- You'll get JSX/React completions and diagnostics

### Test Python
```bash
nvim test.py
```
Type:
```python
def greet(name):
    return f"Hello {name}"

greet("World")
```
- Hover over `greet` and press `K`
- Press `gd` on `greet` to jump to definition

## 🔧 Customization

### Add More Language Servers
Edit `lua/zion/plugins/lsp/mason.lua` and add to `ensure_installed`:
```lua
ensure_installed = {
    "clangd",
    "ts_ls",
    -- Add more here
    "rust_analyzer",  -- for Rust
    "gopls",          -- for Go
},
```

### Change Keybindings
Edit `lua/zion/plugins/lsp/lspconfig.lua` in the `LspAttach` autocmd section.

## 📚 Additional Tools Installed

- **prettier** - Code formatter (JS/TS/HTML/CSS)
- **stylua** - Lua formatter
- **eslint_d** - JavaScript linter
- **pylint** - Python linter

## 🐛 Troubleshooting

### LSP not working?
1. Check if language server is installed: `:Mason`
2. Check LSP status: `:LspInfo`
3. Restart LSP: `<leader>rs`
4. Restart Neovim

### Completions not showing?
- Make sure you're in insert mode
- Press `<C-Space>` to manually trigger completions
- Check `:LspInfo` to see if LSP is attached

### Language server not installing?
- Check internet connection
- Run `:Mason` and manually install the server
- Check `:messages` for errors

## 🎓 Learning More

- `:help lsp` - Neovim LSP documentation
- `:help nvim-lspconfig` - LSP configuration help
- `:Mason` - Open Mason UI to manage servers
- `:LspInfo` - Show LSP status for current buffer

Enjoy your new IDE-like features! 🚀

