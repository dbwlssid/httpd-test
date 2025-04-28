#!/bin/bash

echo "<h1>Welcome to $(shuf -n1 -e 'Meow world' 'Rrrr world')</h1>" > /opt/app-root/src/index.html

httpd -DFOREGROUND
