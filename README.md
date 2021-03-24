# My Ansible Playbook

This playbook is for my own usage. **⚠️The playbook may break your system**

The order that roles run in matters

And tasks belong to one app may have been divided into several parts, so it's hard to remove those parts

**✋🏻DO NOT UPLOAD PASSWORDS TO GITHUB**

TODO: Add a `backup` role

---

Install requirements `ansible-galaxy install -r requirements.yml`

Or install with proxy `env https_proxy="http://127.0.0.1:12333" ansible-galaxy install -r requirements.yml`

Then `ansible-playbook -i hosts ./playbook.yml -K` to start
