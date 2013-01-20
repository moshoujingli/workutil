#!/usr/bin/python
import sys
import re
pattern = re.compile(r'^(.*?)\|#\|(.*?)$')
stringMap = dict()

for line in sys.stdin:
	matched = pattern.match(line)
	if(not(matched is None)):
		pair = matched.groups()
		if(len(pair)==2):
			stringMap[pair[0]]=pair[1]
for key in stringMap:
	print(key+"|#|"+str(stringMap[key]))

