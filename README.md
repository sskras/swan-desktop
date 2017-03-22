# swan-desktop

Swan is a Linux-like graphical desktop for 64 bit Microsoft Windows based on [Cygwin](http://www.cygwin.com/)

## Key Features

- X Window system
  - Window's window-manager, taskbar and alt-tab integration
  - Shared clipboard
  - Access to Windows fonts in X
- Xfce 4.12 desktop
  - Vibrancy icons and Radiance-flat GTK themes
  - Uses Window's default browser as Xfce's default browser
  - pulseaudio support available with `swan-desktop-audio` package
- Thunar file-manager
  - "Open here" for terminal, cmd.exe and Windows explorer
  - "Open with Windows" to use Windows file-type associations in Xfce
  - Symlinks created in Cygwin are navigable from Windows
- Xfce terminal
  - Bash shell with sensible defaults and colors
  - Git shell prompt
  - UTF-8 support
- Git
  - Preinstalled with default configuration
  - Http authentication credentials are stored in Windows Credential manager
    - gnome-keyring support available with `git-credential-gnome-keyring` package
  - Seahorse GUI to manage and unlock SSH keys
  - command-line tab-completion
- Engrampa archive manager handles zip, tar, gz, bz2, xz, and more
- Common utilities
  - Busybox provides lightweight versions of many standard utilities
  - openssh, wget, nano, git, gcc, python, perl (and more) come pre-installed
- `spm` utility wraps cygwin setup.exe for quick package installation and removal
- Install packages from the official Cygwin and Cygwinports mirrors

## Screenshots
![1](http://www.starlig.ht/public/xfce4-win10.png)
![2](http://www.starlig.ht/public/xfce4-win10_2.png)
