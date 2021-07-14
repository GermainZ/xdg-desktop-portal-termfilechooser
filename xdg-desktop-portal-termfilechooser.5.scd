xdg-desktop-portal-termfilechooser(5)

# NAME

xdg-desktop-portal-termfilechooser - an xdg-desktop-portal backend to choose
files with your favorite terminal file manager.

# DESCRIPTION

xdg-desktop-portal-termfilechooser (or xdptf for short) allows applications to
choose files via xdg-desktop-portal using your favorite terminal filechooser.

xdptf will try to load the configuration file from these locations:

- $XDG_CONFIG_HOME/xdg-desktop-portal-termfilechooser/$XDG_CURRENT_DESKTOP
- $XDG_CONFIG_HOME/xdg-desktop-portal-termfilechooser/config
- /etc/xdg/xdg-desktop-portal-termfilechooser/$XDG_CURRENT_DESKTOP
- /etc/xdg/xdg-desktop-portal-termfilechooser/config

_$XDG_CONFIG_HOME_ defaults to _~/.config_.
_$XDG_CURRENT_DESKTOP_ can be a colon seperated list. Each element of that list will be tried.

The configuration files use the INI file format. Example:

```
[filechooser]
cmd=/usr/share/xdg-desktop-portal-termfilechooser/ranger-wrapper.sh
```

# FILECHOOSER OPTIONS

These options need to be placed under the **[filechooser]** section.

**cmd** = _command_
	Command to execute. For invocation details, please refer to the default
	wrapper script.

	The default wrapper script is provided at
	/usr/share/xdg-desktop-portal-termfilechooser/ranger-wrapper.sh, and is
	configured to launch the ranger file manager to select files.
	By default, the wrapper script will use $TERMCMD if available. Otherwise,
	it will fallback to "/usr/bin/kitty".
	You can copy and edit the script to change this.

	An example wrapper script which uses fd and fzf can also be found at
	/usr/share/xdg-desktop-portal-termfilechooser/fzf-wrapper.sh.

**default_dir** = _directory_
	Default directory to save files in, if the invoking program does not
	provide one.

	The default value is /tmp.

# SEE ALSO

**ranger**(1)
