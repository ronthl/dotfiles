# My NeoVim 

## Install NeoVim from Source
Github repo: [neovim](https://github.com/neovim/neovim)

### Install on Debian
1. Clone source code.
2. Checkout to the `stable` tag (Optional but recommended)
```bash
git checkout tags/stable
```
3. Install build tools and dependencies
```bash
sudo apt update
sudo apt install make cmake unzip gettext -y
```
4. Build NeoVim
```bash
make CMAKE_BUILD_TYPE=RelWithDebInfo
```
5. Install NeoVim
```bash
sudo make install
```

**Result**
![](./screenshot/nvim-result.png)

## Install package manager `lazy.nvim`
https://github.com/ronthl/dotfiles/blob/44543437ddd7164d99047dc3cde9b00fc5271d28/.config/nvim/lua/plugins.lua#L4-L15

## Add theme `onedark.nvim`
https://github.com/ronthl/dotfiles/blob/44543437ddd7164d99047dc3cde9b00fc5271d28/.config/nvim/lua/plugins.lua#L23-L32

**Result**
![](./screenshot/theme-result.png)

## Add `nvim-autopairs` plugin
https://github.com/ronthl/dotfiles/blob/b9e5b470f6b71d80cb27a636c3aec39759276b16/.config/nvim/lua/plugins.lua#L34-L38

**Result**
![](./screenshot/autopairs-result.gif)

## Add `telescope.nvim` plugin
### Install plugin
https://github.com/ronthl/dotfiles/blob/0399957abca999ace7b2d3f74beba352eb20e621/.config/nvim/lua/plugins.lua#L40-L44

Call `:checkhealth telescope` after installing telescope to ensure everything is set up correctly.
As you can see in the image below, there was an error and I need to fix it in order to use `live-grep` functionality.
![](./screenshot/telescope-health-before.png)

To fix it simply install `ripgrep`:
* On Debian:
```bash
sudo apt install ripgrep
```

Check health again to see the result.
**Note**: You don't need to fix the `WARNING` since they are optional.
![](./screenshot/telescope-health-after.png)

### Configure `telescope.nvim`
Try the command `:Telescope find_files<cr>` to see if `telescope.nvim` is installed correctly.
![](./screenshot/telescope-verify.gif)

### Add some `telescope` keymaps
https://github.com/ronthl/dotfiles/blob/1ace9daa5f7b34025b52837a983c9118c6532594/.config/nvim/lua/maps.lua#L3-L18

BTW, my leader key is `<space>` 😁