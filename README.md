# chelicerate_GO
GO term analysis for chelicerates

# files and directories
- clupro/ - some figures and analysis using clusterprofiler (another GO term tool) 
	- gene_GO.py - script to make files with gene and GO terms
	- run_cluscomp.R - script to run clusterprofiler
	- run_make_TERM2GENE.sh - wrapper to run gene_GO.py
- go_anno/ - lists of gene and GO terms for topGO comparison
- go_anno_for_GOCOMPASS/ - list for running GOCAMPASS web app that is for inter species GO comparison
- ips_out/ - IPS results that have GO term annotation
- ohno_list/ - ohnolog gene lists
- run_ips.sh - script to run interproscan (change paths)
- run_make_mcscanx_lists.sh - script to make lists of gene from different classes (change paths)
- run_make_ohno_lists.sh - script to make lists of gene from different ohnolig runs (change paths)
- run_topGO.R - script to run topGO for within species comparison
- run_topGO.sh - script wrapper for run_topGO.R

