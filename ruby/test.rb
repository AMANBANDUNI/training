print <<EOF
	This is the first way of creating here document,
	i.e. multiple lines strings.
EOF


print <<"EOF";
	This is the second way of creating here document,
	i.e. multiple lines strings.
EOF


print <<EOC
THIS is the third way of creating here document ,i.e. multiple lines strings.
EOC


print <<"EOC";
THIS IS THE FOURTH WAY OF CREATING HERE DOCUMENT , I.E. MULTIPLE LINES STRINGS.

EOC


print <<`EOC`  				 #execute commands
	echo Hii there.
	echo lo there.
EOC



print <<"EOC", <<"foo" , <<"bar" 	 #you can stack them
 	this is an example of stack.
EOC
	i said foo.
foo
	i said bar.
bar
