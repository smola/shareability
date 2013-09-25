#!/bin/bash

sed -i -e '/^<!-- test -->/d' index.html

for t in $(find tests -name 'index.html') ; do
	t=${t/index.html/}
	sed -i -e "s:^\(<\!-- END INDEX -->\)$:<!-- test --><a href="/$t">$t</a>\n\1:g" index.html
done
