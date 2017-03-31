# Swan-desktop

Swan is a Linux-like graphical desktop for 64 bit Microsoft Windows based on [Cygwin](http://www.cygwin.com/)

## Key Features

- X Window system
  - Window's window-manager, taskbar and alt-tab integration
  - Shared clipboard
  - Access to Windows fonts in X
- Xfce 4.12 desktop
  - Arc GTK theme and Paper icon theme as defaults
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

## Installing

- Download the [Swan Setup executable](http://sirius.starlig.ht/SwanSetup.exe) (here is the [source code](https://github.com/starlight/swan-base/blob/master/SwanSetup.nsi)).  
- Running that will download the cygwin setup executable and install the `swan-desktop` package in unattended mode.
- If Windows "Smart Screen" prevents execution you can click "more info" and "run anyway" to continue.
- Then, find the Desktop shortcut named "Swan Xfce4 Desktop".  Use that to start Xfce.
- Should you find a bug, or have a suggestion, log it at the [GitHub Issues page](https://github.com/starlight/swan-desktop/issues).

## Package Management

The `swan-base` package includes the `spm` command, which is a wrapper for the Cygwin setup.exe installer.  The `spm` command aims to make package managment easier, while maintaining compatibility with the Cygwin project.

Here are some example usages:

`spm -u` Updates all installed packages.  WARNING: may kill running processes to update binaries.  
`spm -S` Searches available package names/descriptions. Accepts regex.  
`spm -m` Lists dependencies of package(s) that are not installed (yet).  
`spm -i` Installs packages. Multiple packages are separated by spaces.  
`spm -t` Lists top-level packages that are not needed by any other package.  
`spm -s` Searches installed package names.  Accepts regex.  
`spm -r` Removes packages, but not the dependencies.  
`spm -R` Removes packages, and dependencies.  Leaves dependencies needed by other packages.  

There are more options available, use `spm -h` to get a full listing.

