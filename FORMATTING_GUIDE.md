# 🎨 Auto-Formatting Guide

## ✅ What Was Added

I've added automatic code formatting to your Neovim config using **conform.nvim** and **Prettier**.

**New Files:**
- `lua/zion/plugins/formatting.lua` - Formatting configuration

**Updated Files:**
- `lua/zion/plugins/mason.lua` - Added formatters (isort, black)

---

## 🚀 How It Works

### Auto-Format on Save (Enabled by Default!)

When you save any of these file types, they will **automatically format**:

- ✅ **JavaScript** (`.js`)
- ✅ **TypeScript** (`.ts`)
- ✅ **React/JSX** (`.jsx`)
- ✅ **React/TSX** (`.tsx`)
- ✅ **HTML** (`.html`)
- ✅ **CSS** (`.css`)
- ✅ **JSON** (`.json`)
- ✅ **YAML** (`.yaml`)
- ✅ **Markdown** (`.md`)
- ✅ **Lua** (`.lua`) - for your Neovim config
- ✅ **Python** (`.py`)

---

## 🧪 Test It Out!

### Test 1: React/JSX Formatting

1. **Open the test file:**
   ```bash
   nvim test_format.jsx
   ```

2. **Notice the bad formatting** (no spaces, inconsistent indentation)

3. **Save the file:**
   ```
   :w
   ```

4. **Watch the magic!** The file will automatically format to:
   ```jsx
   import React, { useState } from "react";

   function App() {
     const [count, setCount] = useState(0);
     const [name, setName] = useState("John");

     const handleClick = () => {
       setCount(count + 1);
       console.log("Count:", count);
     };

     return (
       <div>
         <h1>Hello {name}!</h1>
         <p>Count: {count}</p>
         <button onClick={handleClick}>Increment</button>
       </div>
     );
   }

   export default App;
   ```

### Test 2: TypeScript React Formatting

1. **Open:**
   ```bash
   nvim test_format.tsx
   ```

2. **Save:**
   ```
   :w
   ```

3. **See it format perfectly!**

---

## ⌨️ Manual Formatting Keybinding

If you want to format **without saving**, use:

**`<leader>mp`** (space + mp = "format")

**Works in:**
- **Normal mode** - Formats entire file
- **Visual mode** - Formats only selected lines

**Example:**
1. Select some messy code in visual mode (`V`)
2. Press `<space>mp`
3. Only that selection gets formatted!

---

## 🎯 What Prettier Does

Prettier automatically fixes:

### Spacing & Indentation
```jsx
// Before
function test(){const x=5;return x;}

// After
function test() {
  const x = 5;
  return x;
}
```

### Quotes
```jsx
// Before (mixed quotes)
const name = 'John';
const greeting = "Hello";

// After (consistent)
const name = "John";
const greeting = "Hello";
```

### JSX Formatting
```jsx
// Before
<div><h1>Title</h1><p>Text</p></div>

// After
<div>
  <h1>Title</h1>
  <p>Text</p>
</div>
```

### Arrow Functions
```jsx
// Before
const add=(a,b)=>{return a+b;}

// After
const add = (a, b) => {
  return a + b;
};
```

### Object & Array Formatting
```jsx
// Before
const user={name:"John",age:30,email:"john@example.com"};

// After
const user = {
  name: "John",
  age: 30,
  email: "john@example.com",
};
```

---

## 🛠️ Formatters Installed

| Language | Formatter | What it does |
|----------|-----------|--------------|
| JS/TS/React | **prettier** | Formats code style |
| HTML/CSS | **prettier** | Formats markup & styles |
| JSON/YAML | **prettier** | Formats data files |
| Lua | **stylua** | Formats Lua code |
| Python | **black** | Formats Python code |
| Python | **isort** | Sorts Python imports |

---

## ⚙️ Customization

### Change Prettier Settings

Create a `.prettierrc` file in your project root:

```json
{
  "semi": true,
  "singleQuote": false,
  "tabWidth": 2,
  "trailingComma": "es5",
  "printWidth": 80
}
```

### Disable Auto-Format on Save

Edit `lua/zion/plugins/formatting.lua`:

```lua
-- Comment out or remove this section:
-- format_on_save = {
--   lsp_fallback = true,
--   async = false,
--   timeout_ms = 1000,
-- },
```

Then you can still format manually with `<leader>mp`

### Add More File Types

Edit `lua/zion/plugins/formatting.lua`:

```lua
formatters_by_ft = {
  -- ... existing formatters ...
  svelte = { "prettier" },
  vue = { "prettier" },
  -- etc.
},
```

---

## 🎓 Workflow Examples

### Workflow 1: Write Messy, Save Clean
```
1. Write code quickly without worrying about formatting
2. Press :w to save
3. Code automatically formats perfectly
4. Continue coding!
```

### Workflow 2: Format Selection
```
1. Write a messy function
2. Select it in visual mode (V)
3. Press <space>mp
4. Only that function formats
```

### Workflow 3: Format Before Commit
```
1. Make changes to multiple files
2. Open each file in Neovim
3. Press :w in each
4. All files formatted consistently
5. Commit clean code!
```

---

## 🐛 Troubleshooting

### Formatting not working?

**Check 1: Is Prettier installed?**
```
:Mason
```
Look for `prettier` with a ✓

**Check 2: Check for errors**
```
:messages
```

**Check 3: Manually trigger format**
```
<space>mp
```

**Check 4: Check conform status**
```
:ConformInfo
```

### Format on save not working?

Make sure you're saving with `:w` or `<leader>w`, not just `:q!`

### Prettier conflicts with project settings?

If your project has a `.prettierrc`, Prettier will use those settings instead of defaults.

---

## 📚 Commands Reference

| Command | Description |
|---------|-------------|
| `:ConformInfo` | Show formatter info for current buffer |
| `<leader>mp` | Format file or selection |
| `:w` | Save and auto-format |
| `:Mason` | Manage formatters |

---

## 🎉 Summary

You now have:
- ✅ **Auto-format on save** for React/TypeScript
- ✅ **Manual format** with `<leader>mp`
- ✅ **Prettier** for JS/TS/React/HTML/CSS
- ✅ **Consistent code style** across your projects

**No more worrying about formatting - just write code and save!** 🚀

