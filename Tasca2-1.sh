#!/bin/bash
sort -t',' -k1 $1 | grep "^[$2-$3]"
	


