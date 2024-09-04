#run ips


for j in 1.4 1.5 1.6

do

for i in CARROT TACGIG ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV

do

#for x in segmental tandem
for x in proximal dispersed singleton

do

cat /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_${j}/${i}/${i}_${x}.txt > /work/WGD/GO/from_braker/ohno_list/${i}_${j}_${x}.txt


done

done

done


for j in 1e-2 1e-10 1e-20

do

for i in CARROT TACGIG ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV

do

#for x in segmental tandem
for x in proximal dispersed singleton

do

cat /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_${j}/${i}/${i}_${x}.txt > /work/WGD/GO/from_braker/ohno_list/${i}_${j}_${x}.txt

done

done

done
