#run ips

for i in CARROT TACGIG

do

cat /work/WGD/ohnolog_prediction/spiders_ohnologs/runs/braker_final_for_paper/hsc/raw_pipeline/fastas/${i}*.fasta | tr -d '*' > /work/WGD/GO/from_braker/fastas/${i}.fasta

/work/software/my_interproscan/interproscan-5.63-95.0/interproscan.sh \
	--appl Pfam,PANTHER \
	-cpu 60 \
	-o /work/WGD/GO/from_braker/ips_out/${i}_ips.tsv \
	-goterms \
	-f TSV \
	-i /work/WGD/GO/from_braker/fastas/${i}.fasta \
	-t p

python3 /work/WGD/GO/gene_GO.py /work/WGD/GO/from_braker/ips_out/${i}_ips.tsv /work/WGD/GO/from_braker/go_anno/${i}_anno.tsv

done
