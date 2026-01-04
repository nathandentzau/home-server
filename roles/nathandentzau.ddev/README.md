# nathandentzau.ddev

An Ansible role that installs [DDEV](https://ddev.com/) (Docker-based local development environment) on Debian/Ubuntu systems.

## Requirements

- Ansible 2.15.1 or higher
- Debian or Ubuntu Linux distribution
- Root/sudo access

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```yaml
# DDEV repository configuration
ddev_apt_repo_url: "https://pkg.ddev.com/apt"
ddev_apt_gpg_key_url: "https://pkg.ddev.com/apt/gpg.key"
ddev_apt_keyring_path: "/etc/apt/keyrings/ddev.gpg"
ddev_apt_sources_list_path: "/etc/apt/sources.list.d/ddev.list"

# DDEV package configuration
ddev_package_state: present
ddev_install_mkcert: true
```

## Dependencies

- geerlingguy.docker (DDEV requires Docker to function)

## Example Playbook

```yaml
---
- hosts: all
  become: true
  roles:
    - nathandentzau.ddev
```

## License

MIT

## Author Information

This role was created by Nathan Dentzau.

