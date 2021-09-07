#!/bin/bash

perl -lane 'print $1 while ( m/(\"title\":\{\"runs.*? views\"\}\}\})/g)' <amapola.txt \
	|sed 's/title//g' \
	|sed 's/runs//g'\
	|sed 's/accessibility//g'\
	|sed 's/Data//g'\
	|sed 's/label//g'\
	|sed 's/{//g'\
	|sed 's/}//g'\
	|sed 's/"//g'\
	|sed 's/\]//g'\
	|sed 's/\[//g'\
	|sed 's/://g'\
	|sed 's/text//g'\


