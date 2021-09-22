kmpm.caddy
==========

A role that, by using xcaddy, compiles, installs and configure caddyserver

Requirements
------------

```shell
pip install github3.py
```

Role Variables
--------------

`xcaddy_with: []` a list of modules that should be included when caddy compiles.
```yaml
xcaddy_with:
  - "github.com/caddy-dns/loopia"
```

Dependencies
------------

### Collections
- community.general


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

