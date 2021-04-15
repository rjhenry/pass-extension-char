# pass-char

A [pass](https://www.passwordstore.org) extension to make it easier to fetch
individual characters from a password.

## Usage
```
Usage:

    pass char pass-name index
        Fetch the index-th character from a password.
```

## Examples
Select a single character from a password:
```
$ echo "Testing123" | pass insert -e Demo
[master 0ba045f] Add given password for Demo to store.
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 Demo.gpg

$ pass char Demo 1
T
$ pass char Demo 3
s
$ pass char Demo 10
3
$ pass char Demo 11

```

## Installation

### Globally, from git
```
git clone https://github.com/rjhenry/pass-extension-char
cd pass-char
sudo make install
```

### Per-user, from git
```
git clone https://github.com/rjhenry/pass-extension-char
mkdir -p ~/.password-store/.extensions
ln -s $(pwd)/pass-extension-char/char.bash ~/.password-store/.extensions/
# To add completion:
# sudo -l -s $(pwd)/pass-extension-char/pass-char.bash.completion \
  /etc/bash_completion.d/pass-char
```

## Requirements

- `pass` 1.7.0 or later for extension support
- `coreutils`, for `head` and `tail`
