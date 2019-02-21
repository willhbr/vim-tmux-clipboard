
# vim-tmux-clipboard

Things get messy when I need to copy lines of text from vim into tmux's
clipboard, especially when multiple split-windows are opened. So I created this
super simple plugin, which provides seamless integration for vim and tmux's
clipboard.


vim-tmux-clipboard automatically copy yanked text into tmux's clipboard, and
copy tmux's clipboard content into vim's asterisk (`*`) register.

## Requirements

- Add `set -g focus-events on` to your `tmux.conf`.
- [vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events) for vim users.

Install via pug:

```shell
pug get vim github: tmux-plugins/vim-tmux-focus-events
pug get vim github: willhbr/vim-tmux-clipboard
```

Customise the register used with `set g:tmux_shared_register = '+'` (defaults to `*`).
This is useful if you don't have +clipboard support in Vim, but want to be able to use some other register.
