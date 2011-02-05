compile:
	perl -ni -e 'print; exit if /^XB-Maemo-Icon-26:$$/' debian/control
	uuencode -m icon.png - | perl -ne 'print " $$_" unless $$. == 1 or /^====$$/' >>debian/control

