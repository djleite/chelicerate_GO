#run ips

#mkdir TERM2GENE

for i in CARROT TACGIG ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV

do

python /work/WGD/GO/from_braker/clupro/gene_GO.py /work/WGD/GO/from_braker/ips_out/${i}_ips.tsv TERM2GENE/${i}_anno.tsv

done


