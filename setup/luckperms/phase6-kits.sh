#!/bin/bash

# This file is part of FooFarm configuration licensed under the BSD 3-Clause License (BSD)
# Copyright (c) sibomots <https://foo.farm>
# Copyright (c) contributors

database=foofarmlp
user=lpsteve

mysql -u $user -D $database -t <<EOF
insert
into luckperms_group_permissions 
(name, permission, value, server, world, expiry, contexts)
values
('default','nucleus.kit.newplayer',1,'global','global',0,'{}')
EOF
