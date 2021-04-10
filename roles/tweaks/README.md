# Tweaks

This role contains stuffs that the `dotsfiles` and `packages` role can't do:

- Install things that don't need root privileges (like Rime and Yarn packages)
- Download things (like themes)
- Run some scripts (like `files/env.fish`)
- Dconf related stuffs

## Usage

`ansible-playbook -i hosts ./playbook.yml -K --tags "tweaks"`
