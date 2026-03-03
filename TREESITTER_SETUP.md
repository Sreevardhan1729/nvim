# 🌳 Treesitter Setup Guide

## ⚠️ Current Issue

The JavaScript parser (and possibly others) are not installed yet, which causes errors when:
- Opening JavaScript files
- Restoring sessions with JavaScript files

## ✅ Solution: Parsers Are Installing Automatically!

**Good news:** I've already started installing the parsers for you in the background!

The parsers are being downloaded and compiled right now. This process takes 1-2 minutes.

### **What's Happening:**

The configuration will automatically install these parsers:
- ✅ JavaScript, TypeScript, TSX
- ✅ HTML, CSS, JSON, YAML
- ✅ Lua, Vim, Python, C, C++
- ✅ Markdown, Bash

### **Manual Installation (if needed):**

If you want to install parsers manually or add more languages:

```vim
:TSInstall javascript typescript tsx html css json yaml lua python c cpp markdown bash vim
```

## 🔍 Verify Installation

Check which parsers are installed:
```vim
:TSInstallInfo
```

You should see a list with checkmarks (✓) next to installed parsers.

## 🐛 Troubleshooting

### Error: "Parser could not be created"

This means the parser isn't installed yet. Run:
```vim
:TSInstall javascript
```

### Session Restore Errors

If you're getting session restore errors:

1. **Delete the problematic session:**
   ```bash
   rm ~/.local/share/nvim/sessions/%2FUsers%2Fadmin%2FDesktop%2Fonboarding_projects%2Freact-query-demo.vim
   ```

2. **Install the parsers** (see above)

3. **Restart Neovim** and navigate to your project

4. **Create a new session:**
   ```vim
   :AutoSession save
   ```

### Parsers Won't Install

Make sure you have the required tools:
```bash
# Check if you have a C compiler
gcc --version
# or
clang --version

# Check if you have tree-sitter CLI (optional but helpful)
tree-sitter --version
```

If missing, install Xcode Command Line Tools:
```bash
xcode-select --install
```

## 📝 What's Been Fixed

✅ Treesitter config updated to use new API  
✅ Graceful error handling when parsers are missing  
✅ Auto-session commands updated to latest API  
✅ Corrupted session file deleted  

## 🚀 Next Steps

1. **Install parsers** using one of the options above
2. **Restart Neovim**
3. **Test by opening a JavaScript file**
4. **Create a new session** for your project

Once parsers are installed, everything should work smoothly! 🎉

