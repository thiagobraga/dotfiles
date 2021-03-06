<h1>
  <img src="../src/images/icons/config-icon.png" width="24" /> <a href="../README.md"><b>dotbraga</b></a> / Terminator
</h1>

Some custom settings and keyboard shortcuts for Terminator.

<!-- TOC -->

- [Keyboard Shortcuts](#keyboard-shortcuts)
- [Settings](#settings)
- [Color Palette](#color-palette)

<!-- /TOC -->

<br/>

## Keyboard Shortcuts

|      Command       |                     Shortcut                      |
|:------------------:|:-------------------------------------------------:|
|        Copy        |          <kbd>Ctrl</kbd> + <kbd>C</kbd>           |
|       Paste        |          <kbd>Ctrl</kbd> + <kbd>V</kbd>           |
|      New tab       |          <kbd>Ctrl</kbd> + <kbd>T</kbd>           |
|     Close tab      |          <kbd>Ctrl</kbd> + <kbd>W</kbd>           |
|  Split vertically  | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd> |
| Split horizontally |          <kbd>Ctrl</kbd> + <kbd>D</kbd>           |

<br/>

## Settings

``` ini
[global_config]
  handle_size = 1
  title_hide_sizetext = True
  title_transmit_fg_color = "#2e3440"
  title_transmit_bg_color = "#88c0d0"
  title_receive_fg_color = "#2e3440"
  title_receive_bg_color = "#8fbcbb"
  title_inactive_fg_color = "#d8dee9"
  title_inactive_bg_color = "#4c566a"
  inactive_color_offset = 1.0
  enabled_plugins = ,
  suppress_multiple_term_dialog = True
  always_split_with_profile = True
[keybindings]
  new_tab = <Control>t
  split_horiz = <Control>d
  split_vert = <Control><Shift>d
  close_term = <Control>w
  copy = <Control>c
  paste = <Control>v
  hide_window = None
  new_terminator = <Control>n
[profiles]
  [[default]]
    icon_bell = False
    background_color = "#2e3440"
    background_darkness = 0.9
    background_type = transparent
    cursor_shape = ibeam
    cursor_color = "#d8dee9"
    font = Fira Code weight=453 9
    foreground_color = "#d8dee9"
    show_titlebar = False
    scrollback_lines = 5000
    scrollback_infinite = True
    palette = "#4d566b:#bf616a:#a3be8c:#ebcb8b:#81a1c1:#b48ead:#88c0d0:#e5e9f0:#60687a:#bf616a:#a3be8c:#ebcb8b:#81a1c1:#b48ead:#8fbcbb:#eceff4"
    use_system_font = False
[layouts]
  [[default]]
    [[[child0]]]
      fullscreen = False
      last_active_window = True
      maximised = False
      order = 0
      parent = ""
      type = Window
    [[[terminal1]]]
      order = 0
      parent = child0
      profile = default
      type = Terminal
[plugins]
```

<br/>

## Color Palette

<img src="../src/images/screenshots/dotbraga_terminator-palette_2020-10-18_17.45.png" width="480" />
