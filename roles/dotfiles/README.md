# Dotfiles

This role should run after installations of packages (to override default config files)

This role simply restores dotfiles (and simple templates)

Files that need to be downloaded are not in this role. See `tweaks` role

`copy` module can't preserve permissions of folders(`.ssh`). The `directory_mode` option doesn't support `preserve` value. Use [`synchronize`](https://docs.ansible.com/ansible/latest/collections/ansible/posix/synchronize_module.html) instead?

## Files
```
.
├── .config
│   ├── fish # tweaks fish.yml
│   │   ├── conf.d
│   │   │   ├── greeting.fish
│   │   │   ├── greeting.js
│   │   │   ├── prompt.fish
│   │   │   └── z.fish
│   │   └── functions
│   │       └── fish_prompt.fish
│   ├── fontconfig
│   │   └── conf.d
│   │       ├── 60-preferable.conf
│   │       └── fonts.dtd
│   ├── git
│   │   └── config
│   ├── ibus
│   │   └── rime # tweaks rime.yml
│   │       ├── default.custom.yaml
│   │       └── double_pinyin_mspy.custom.yaml
│   ├── mimeapps.list
│   └── tilix
│       └── schemes
│           └── onedark.json # tweaks tilix.yml
├── .local
│   └── share
│       └── gtksourceview-4
│           └── styles
│               └── onedark.xml # tweaks gedit.yml
└── Templates
    ├── newfile.txt
    └── README.md
```
