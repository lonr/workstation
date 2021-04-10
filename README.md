# My Ansible Playbook

This playbook is for my own usage. **⚠️The playbook may break your system**

The order that roles run in matters

And tasks belong to one app may have been divided into several parts, so it's hard to change those parts

**✋🏻DO NOT UPLOAD PASSWORDS TO GITHUB**

## Usage

Install requirements `ansible-galaxy install -r requirements.yml`

Or install with a proxy `env https_proxy="http://127.0.0.1:12333" ansible-galaxy install -r requirements.yml`

Then `ansible-playbook -i hosts ./playbook.yml -K` to start

### Run per play

- `ansible-playbook -i hosts ./playbook.yml -K --tags "packages"`
- `ansible-playbook -i hosts ./playbook.yml -K --tags "dotfiles"`
- `ansible-playbook -i hosts ./playbook.yml -K --tags "tweaks"`
