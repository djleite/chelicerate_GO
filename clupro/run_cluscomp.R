#run clustercompare

library(GO.db)
library(clusterProfiler)
library(ggplot2)

goterms <- Term(GOTERM)

term2name <- data.frame("GOID"=names(goterms), "terms"=goterms)

species <- c('CARROT', 'TACGIG', 'ECTDAV', 'DYSSIL', 'ARGBRU', 'HYLGRA', 'LATELE', 'PARTEP', 'OEDGIB', 'TRIANT', 'TRICLA', 'ULODIV')

#species <- c('CARROT')


for (sp in species) {

ohno1.40 <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_0.txt", sep="")),use.names=F)
ohno1.50 <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_0.txt", sep="")),use.names=F)
ohno1.60 <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_0.txt", sep="")),use.names=F)
ohno1.4A <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_A.txt", sep="")),use.names=F)
ohno1.5A <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_A.txt", sep="")),use.names=F)
ohno1.6A <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_A.txt", sep="")),use.names=F)
ohno1.4B <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_B.txt", sep="")),use.names=F)
ohno1.5B <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_B.txt", sep="")),use.names=F)
ohno1.6B <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_B.txt", sep="")),use.names=F)
ohno1.4C <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_C.txt", sep="")),use.names=F)
ohno1.5C <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_C.txt", sep="")),use.names=F)
ohno1.6C <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_C.txt", sep="")),use.names=F)


wgd1.4 <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_segmental.txt", sep="")),use.names=F)
wgd1.5 <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_segmental.txt", sep="")),use.names=F)
wgd1.6 <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_segmental.txt", sep="")),use.names=F)
wgdtwo <- unlist(read.table(paste("../ohno_list/",sp,"_1e-2_segmental.txt", sep="")),use.names=F)
wgdten <- unlist(read.table(paste("../ohno_list/",sp,"_1e-10_segmental.txt", sep="")),use.names=F)
wgdtwe <- unlist(read.table(paste("../ohno_list/",sp,"_1e-20_segmental.txt", sep="")),use.names=F)

tan1.4 <- unlist(read.table(paste("../ohno_list/",sp,"_1.4_tandem.txt", sep="")),use.names=F)
tan1.5 <- unlist(read.table(paste("../ohno_list/",sp,"_1.5_tandem.txt", sep="")),use.names=F)
tan1.6 <- unlist(read.table(paste("../ohno_list/",sp,"_1.6_tandem.txt", sep="")),use.names=F)
tantwo <- unlist(read.table(paste("../ohno_list/",sp,"_1e-2_tandem.txt", sep="")),use.names=F)
tanten <- unlist(read.table(paste("../ohno_list/",sp,"_1e-10_tandem.txt", sep="")),use.names=F)
tantwe <- unlist(read.table(paste("../ohno_list/",sp,"_1e-20_tandem.txt", sep="")),use.names=F)



ohno <- list(X1.40 = ohno1.40,
		X1.50 = ohno1.50,
		X1.60 = ohno1.60,
		X1.4A = ohno1.4A,
		X1.5A = ohno1.5A,
		X1.6A = ohno1.6A,
		X1.4B = ohno1.4B,
		X1.5B = ohno1.5B,
		X1.6B = ohno1.6B,
		X1.4C = ohno1.4C,
		X1.5C = ohno1.5C,
		X1.6C = ohno1.6C,
		wgd1.4 = wgd1.4,
		wgd1.5 = wgd1.5,
		wgd1.6 = wgd1.6,
		wgdtwo = wgdtwo,
		wgdten = wgdten,
		wgdtwe = wgdtwe,
		tan1.4 = tan1.4,
		tan1.5 = tan1.5,
		tan1.6 = tan1.6,
		tantwo = tantwo,
		tanten = tanten,
		tantwe = tantwe
		)

ref <- as.data.frame(read.table(paste("TERM2GENE/",sp,"_anno.tsv", sep=""), header=F))

encp <- compareCluster(ohno, TERM2GENE=ref, TERM2NAME=term2name, fun='enricher',pvalueCutoff=0.005,pAdjustMethod="BH",minGSSize=5,maxGSSize=1000,qvalueCutoff=0.05)

#png(filename=paste("/work/WGD/GO/from_braker/clupro/plot",sp,".png", sep=""))
p <- dotplot(encp, showCategory=5)
p <- p+theme(axis.text.x = element_text(angle = 90,vjust = 0.5))
p
ggsave(paste("/work/WGD/GO/from_braker/clupro/plot",sp,".png", sep=""),width = 35, height = 30, dpi = 300, units = "cm", device='png' )
#dev.off()
}





#SP = "argbru"
#argbruOHNO1.4c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.4_c.TXT", SEP="")),USE.NAMES=f)
#argbruOHNO1.5c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.5_c.TXT", SEP="")),USE.NAMES=f)
#argbruOHNO1.6c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.6_c.TXT", SEP="")),USE.NAMES=f)
#argbruOHNO1.7c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.7_c.TXT", SEP="")),USE.NAMES=f)

#argbruREF <- AS.DATA.FRAME(READ.TABLE(PASTE("term2gene/",SP,"_ANNO.TSV", SEP=""), HEADER=f))


#SP = "partep"
#partepOHNO1.4c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.4_c.TXT", SEP="")),USE.NAMES=f)
#partepOHNO1.5c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.5_c.TXT", SEP="")),USE.NAMES=f)
#partepOHNO1.6c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.6_c.TXT", SEP="")),USE.NAMES=f)
#partepOHNO1.7c <- UNLIST(READ.TABLE(PASTE("../OHNO_LIST/",SP,"_1.7_c.TXT", SEP="")),USE.NAMES=f)

#partepREF <- AS.DATA.FRAME(READ.TABLE(PASTE("term2gene/",SP,"_ANNO.TSV", SEP=""), HEADER=f))

#OHNO <- LIST(argbrux1.4c = argbruOHNO1.4c,
#		argbrux1.5c = argbruOHNO1.5c,
#		argbrux1.6c = argbruOHNO1.6c,
#		argbrux1.7c = argbruOHNO1.7c,
#		partepx1.4c = partepOHNO1.4c,
#		partepx1.5c = partepOHNO1.5c,
#		partepx1.6c = partepOHNO1.6c,
#		partepx1.7c = partepOHNO1.7c)
#		
#ALLLIST <- LIST(arg=HEAD(argbruREF$v2), par=HEAD(partepREF$v2))
#
#ENCP <- COMPAREcLUSTER(OHNO, UNIVERSE=ALLLIST, term2gene=RBIND(argbruREF,partepREF), term2name=TERM2NAME, FUN='ENRICHER',PVALUEcUTOFF=0.05,PaDJUSTmETHOD="bh",MINgssIZE=10,MAXgssIZE=500,QVALUEcUTOFF=0.05)
		
		
		
