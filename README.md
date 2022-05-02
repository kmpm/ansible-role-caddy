kmpm.caddy
==========

A role that installs and configure [caddy](https://github.com/caddyserver/caddy) server.

If any custom modules are given using the variable `xcaddy_with` then
caddy will be compiled from source using [xcaddy](https://github.com/caddyserver/xcaddy) on the remote computer.


Requirements
------------

```shell
pip install github3.py
```

Role Variables
--------------

`caddy_version: latest` lets you choose version of caddy or latest.
```yaml
caddy_version: 2.4.5
```

`caddy_user: caddy` sets the name of the user that will end up running caddy.

`caddy_group: "{{ caddy_user }}"` sets the name of the group used to run caddy.

`xcaddy_with: []` a list of modules that should be included.
This will trigger a custom compile of caddy using golang and xcaddy.
```yaml
xcaddy_with:
  - "github.com/caddy-dns/loopia"
```

### Used when compiling using xcaddy
The role will install git, if missing and `caddy_version != "latest"`
`xcaddy_version: latest` the xcaddy release to use if compiling

`golang_version: 0.17.9` the version of golang to install if not found in 
`/usr/local/go/bin`


Dependencies
------------

### Collections
- community.general


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: kmpm.caddy, caddy_version: 'latest' }

License
-------

MIT


Inspiration
-----------
- https://www.jeffgeerling.com/blog/2018/testing-your-ansible-roles-molecule
- https://redhatnordicssa.github.io/how-we-test-our-roles
- https://itheo.tech/install-python-3-8-on-a-raspberry-pi