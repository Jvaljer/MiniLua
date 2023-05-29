#!/bin/bash
INTERP="interp"

CPS=0
TREE=0

#then setting right the interp file
#if [ $CPS==1 ]; then
#	INTERP="interp-cps"
#fi

#then executing the cmd for all wanted files
for n in {1..7}
do
	if [ $n >= 10 ]; then
		file=$n"_*.lua"
	else
		file="0$n""_*.lua"
	fi
	echo "tested file -> $file"
	
	#first showing what is wanted
	echo "what based lua compiler returns :"
	../lua/mini_lua.sh ../tests/$file
	
	#then showing what my compiler returns
	echo "what compiler returns :"
	dune exec --display=quiet $INTERP/run.exe -- ../tests/$file
	
	#possibly showing the produced tree
	#if [ $TREE==1 ]; then
	#	echo "prog produced tree :"
	#	dune exec --display=quiet showast/showast.exe -- ../tests/$file
	#fi
done
