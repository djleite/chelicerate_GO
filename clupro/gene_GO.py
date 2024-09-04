#make the topGO input from the interproscan

import sys

infile = sys.argv[1]
outfile = sys.argv[2]

geneGO_dict = {}

with open(infile, 'r') as inf:
	for line in inf:
		line= line.split()
		if line[0] not in geneGO_dict:
			if line[-1] != "-":
				GOs = [line[-1]]
				geneGO_dict[line[0]] = GOs
		elif line[0] in geneGO_dict:
			if line[-1] != "-":
				geneGO_dict[line[0]].append(line[-1])
with open(outfile, 'w') as OUT:
	for k in geneGO_dict:
		v = geneGO_dict[k]
		v = ','.join(v).replace('|',',')
		v = list(set(v.split(',')))
		#v = ', '.join(v)
		for i in v:
			OUT.write(i+'\t'+k+'\n')
		

