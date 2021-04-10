# Dotfiles

This role should run after installations of packages (to override default config files)

This role simply restores dotfiles (and simple templates)

Files that need to be downloaded are not in this role. See `tweaks` role

`copy` module can't preserve permissions of folders(`.ssh`). The `directory_mode` option doesn't support `preserve` value. Use [`synchronize`](https://docs.ansible.com/ansible/latest/collections/ansible/posix/synchronize_module.html) instead?

## Usage

`ansible-playbook -i hosts ./playbook.yml -K --tags "dotfiles"`

## Files

```
tree ./~ -a
./~
├── .config
│   ├── autostart
│   │   ├── electron-ssr.desktop
│   │   └── google-chrome.desktop
│   ├── fontconfig
│   │   └── conf.d
│   │       ├── 60-preferable.conf
│   │       └── fonts.dtd
│   ├── git
│   │   └── config
│   ├── ibus
│   │   └── rime
│   │       ├── default.custom.yaml
│   │       └── double_pinyin_mspy.custom.yaml
│   ├── mimeapps.list # 
│   ├── tilix
│   │   └── schemes
│   │       └── onedark.json
│   └── zsh
│       ├── functions
│       │   ├── backup.zsh
│       │   └── rsyncignore
│       └── greeting.js
├── .local
│   └── share
│       └── gtksourceview-4
│           └── styles
│               └── onedark.xml
├── Templates
│   ├── newfile.txt
│   └── README.md
└── .zshenv
```

- `mimeapps.list`
  - after Chrome and VS Code were installed
  - [Setting VS Code as the default text editor](https://code.visualstudio.com/docs/setup/linux#_setting-vs-code-as-the-default-text-editor)
