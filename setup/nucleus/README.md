# Player Setup

Using Nucleus to setup Player conditions

## First time Kit

```
kit create newplayer
```

Add the permission node to the database via script:

```
# phase6-kits.sh
database=foofarmlp
user=lpsteve
mysql -u $user -D $database -t <<EOF
insert into luckperms_group_permissions
(name, permission, value, server, world, expiry, contexts)
values
('default','nucleus.kit.newplayer',1,'global','global',0,'{}')
EOF
```

```
/lp reloadconfig
```

The first time kit is the document/book for PyroTech


---
Copyright (c) sibomots.  ALL RIGHTS RESERVED.
