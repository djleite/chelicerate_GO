#run ips


for j in 1.4 1.5 1.6

do

for i in ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV

do

for x in 0 A B C

do

cat /work/WGD/ohnolog_prediction/spiders_ohnologs/runs/braker_final_for_paper/spider3/run_${j}/8_GenerateOhnoFamilies/${i}/*[${x}]* | tr '|' '\t' | tr '\t' '\n' | grep ${i} | sort -u > /work/WGD/GO/from_braker/ohno_list/${i}_${j}_${x}.txt

done

done

done


for j in 1.4 1.5 1.6

do

for i in CARROT TACGIG

do

for x in 0 A B C

do

cat /work/WGD/ohnolog_prediction/spiders_ohnologs/runs/braker_final_for_paper/hsc/run_${j}/8_GenerateOhnoFamilies/${i}/*[${x}]* | tr '|' '\t' | tr '\t' '\n' | grep ${i} | sort -u > /work/WGD/GO/from_braker/ohno_list/${i}_${j}_${x}.txt

done

done

done
