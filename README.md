kmpm.caddy
==========

A role that, by using xcaddy, compiles, installs and configure caddyserver

Requirements
------------

No special requirements.


Role Variables
--------------

`xcaddy_with: []` a list of modules that should be included when caddy compiles.
```yaml
xcaddy_with:
  - "github.com/caddy-dns/loopia"
```

Dependencies
------------

No collections or roles are required besides default ansible ones.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

