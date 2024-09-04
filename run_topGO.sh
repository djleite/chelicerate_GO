#run go

#for i in ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV
for i in all
do

for x in 0 A B C

do


Rscript run_topGO.R /work/WGD/GO/from_braker/go_anno/${i}_anno.tsv /work/WGD/GO/from_braker/ohno_list/${i}_${x}.txt /work/WGD/GO/from_braker/topgo_out/${i}_${x}

done

done
