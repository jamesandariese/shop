# `shop`

Switch your shell.  Don't break your shell.

## Description

Shop allows you to select a shell to use normally without having to use chsh.
This allows you to, for instance, use home-manager with nix to manage your
shell without coordination or system-wide changes.

To use, add shop to an executable path, add it to /etc/shells, and chsh yourself to use shop.
Now you will load bash by default or sh if bash isn't present.  To set your shell,
run the following, replacing zsh with whatever your shell is:

```bash
ln -sf `which zsh` $HOME/.shell
```

Now, when you login, shop will attempt to run whatever you're currently pointing
your .shell to.  If that fails, it will fall back to bash or sh again until
it works.
