#!/bin/bash

gen_text() {
	convert -background white -fill red \
		-size $2  -pointsize 18  -gravity center \
		label:$1 -strip images/$1
}

gen_text "200x200.png" 200x200
gen_text "600x600.png" 600x600
