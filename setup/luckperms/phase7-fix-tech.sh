#!/bin/bash

# This file is part of FooFarm configuration licensed under the BSD 3-Clause License (BSD)
# Copyright (c) sibomots <https://foo.farm>
# Copyright (c) contributors


# this fixes the problem of "tech" not able to work for admin/janitors
# now, with this change, any role admin+ will have "tech" permission
# (but those who have just "tech" (and not admin/janitor) -- only have "tech" role)
# most admins need "tech".  Not all "tech" need admin. 
# we will see if this works, and tailor it later if needed.

database=foofarmlp
user=lpsteve

mysql -u $user -D $database -t <<EOF
insert into luckperms_group_permissions 
(name, permission, value, server, world, expiry, contexts) 
values ('admin','group.tech',1,'global','global',0,'{}')
EOF

