# nathandentzau.dotfiles

An Ansible role that installs dotfiles, SSH keys, NVM, and Oh My Zsh for a specified user.

## Requirements

- Ansible 2.15.1 or higher
- Linux distribution (Debian, Ubuntu, EL, Fedora)
- Root/sudo access
- User must exist before running this role
- `curl` must be installed
- `zsh` must be installed (for Oh My Zsh)

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```yaml
# Target user for dotfiles installation
dotfiles_user: "{{ ansible_user }}"
dotfiles_user_home: "/home/{{ dotfiles_user }}"

# Dotfiles source directory (relative to role directory)
dotfiles_source_dir: "{{ role_path }}/dotfiles"

# SSH keys configuration
dotfiles_ssh_private_key_path: "{{ playbook_dir }}/ssh/id_rsa"
dotfiles_ssh_public_key_path: "{{ playbook_dir }}/ssh/id_rsa.pub"
dotfiles_install_ssh_keys: true

# NVM configuration
dotfiles_install_nvm: true
dotfiles_nvm_version: "v0.39.7"
dotfiles_nvm_install_url: "https://raw.githubusercontent.com/nvm-sh/nvm/{{ dotfiles_nvm_version }}/install.sh"

# Oh My Zsh configuration
dotfiles_install_ohmyzsh: true
dotfiles_ohmyzsh_install_url: "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh"

# List of dotfiles to install (files starting with .)
dotfiles_to_install:
  - .zshrc
  - .gitconfig
  - .vimrc
  - .gitignore

# List of scripts/binaries to install (files not starting with .)
dotfiles_scripts_to_install:
  - git-fixup
```

## Dependencies

None.

## Example Playbook

```yaml
---
- hosts: all
  become: true
  vars:
    dotfiles_user: nathan
    dotfiles_ssh_private_key_path: "{{ playbook_dir }}/ssh/id_rsa"
    dotfiles_ssh_public_key_path: "{{ playbook_dir }}/ssh/id_rsa.pub"
  roles:
    - nathandentzau.dotfiles
```

## Notes

- The role installs dotfiles from the `dotfiles/` directory within the role
- Dotfiles are installed to the user's home directory
- Scripts are installed to `~/bin/` directory
- SSH keys are installed to `~/.ssh/` directory
- NVM and Oh My Zsh are installed in the user's home directory
- The user must exist before running this role

## License

MIT

## Author Information

This role was created by Nathan Dentzau.

