#!/bin/bash

gen_text() {
	convert -background white -fill red \
		-size $2  -pointsize 18  -gravity center \
		label:$1 images/$1
}

gen_text "200x200.png" 200x200
