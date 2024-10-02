# License: BSD
# Author: Max Mustermann
# Citation-Required: Yes
# Version: 0.1
'''
A zipped plugin

This plugin is a "Hello World" dummy and only for testing purposes.

Please cite:
Mustermann M. (2012) Zipped Hello World PyMOL Plugin. NoJournal 1(1)
'''

from pymol import cmd

def bar():
	print 'Hello World'

cmd.extend('bar', bar)
