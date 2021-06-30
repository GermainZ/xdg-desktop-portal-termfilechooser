# xdg-desktop-portal-termfilechooser

[xdg-desktop-portal] backend for choosing files with your favorite file
chooser.
By default, it will use the [ranger] file manager, but this is customizable.
Based on [xdg-desktop-portal-wlr] (xpdw).

## Building

```sh
meson build
ninja -C build
```

## Installing

### From Source

```sh
ninja -C build install
```


## Running

Make sure `XDG_CURRENT_DESKTOP` is set and imported into D-Bus.

When correctly installed, xdg-desktop-portal should automatically invoke
xdg-desktop-portal-termfilechooser when needed.

For example, to use this portal with Firefox, launch Firefox as such:
`GTK_USE_PORTAL=1 firefox`.

### Configuration

See `man 5 xdg-desktop-portal-termfilechooser`.

### Manual startup

At the moment, some command line flags are available for development and
testing. If you need to use one of these flags, you can start an instance of
xdpw using the following command:

```sh
xdg-desktop-portal-termfilechooser -r [OPTION...]
```

To list the available options, you can run `xdg-desktop-portal-termfilechooser
--help`.

## License

MIT

[xdg-desktop-portal]: https://github.com/flatpak/xdg-desktop-portal
[xdg-desktop-portal-wlr]: https://github.com/emersion/xdg-desktop-portal-wlr
[ranger]: https://ranger.github.io/
