
## Keyboard settings

Check this site.

To change keyboard layout (need to close session):
```
localectl list-keymaps
localectl set-keymap <map>
```

Used:
```
localectl set-keymap us
```

To use `AltGr` (Right Alt) as `<Compose Key>`:
```
setxkbmap -option compose:ralt
```

