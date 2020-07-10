#!/bin/bash -x

echo "REPLACE INTO wp_options VALUES (3,'blogname','FaC','yes');" | mysql -uroot -psomewordpress wordpress;
echo "REPLACE INTO wp_options VALUES (4,'blogdescription','Just another FFRDC-as-Code site','yes');" | mysql -uroot -psomewordpress wordpress;
