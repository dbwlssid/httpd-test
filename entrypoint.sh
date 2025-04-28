#!/bin/bash

echo "<h1>Welcome to $(shuf -n1 -e 'Meow world' 'Rrrr world')</h1>" > /var/www/html/index.html

httpd -DFOREGROUND
