#add Sen1 CLIP data to the genedata table

#read in gene data table
setwd("C:/Users/fated/OneDrive/R")


genedata_chr1rev<-read.delim("genedata_chr1revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("genedata_chr2revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("genedata_chr3revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("genedata_chr4revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("genedata_chr5revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("genedata_chr6revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("genedata_chr7revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("genedata_chr8revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("genedata_chr9revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("genedata_chr10revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("genedata_chr11revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("genedata_chr12revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("genedata_chr13revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("genedata_chr14revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("genedata_chr15revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("genedata_chr16revDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw<-read.delim("genedata_chr1fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("genedata_chr2fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("genedata_chr3fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("genedata_chr4fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("genedata_chr5fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("genedata_chr6fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("genedata_chr7fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("genedata_chr8fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("genedata_chr9fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("genedata_chr10fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("genedata_chr11fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("genedata_chr12fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("genedata_chr13fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("genedata_chr14fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("genedata_chr15fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("genedata_chr16fwDbp2rep_Norm2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


chr1_Sen1fw<-read.delim("chr1_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr2_Sen1fw<-read.delim("chr2_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr3_Sen1fw<-read.delim("chr3_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr4_Sen1fw<-read.delim("chr4_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr5_Sen1fw<-read.delim("chr5_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr6_Sen1fw<-read.delim("chr6_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr7_Sen1fw<-read.delim("chr7_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr8_Sen1fw<-read.delim("chr8_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr9_Sen1fw<-read.delim("chr9_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr10_Sen1fw<-read.delim("chr10_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr11_Sen1fw<-read.delim("chr11_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr12_Sen1fw<-read.delim("chr12_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr13_Sen1fw<-read.delim("chr13_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr14_Sen1fw<-read.delim("chr14_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr15_Sen1fw<-read.delim("chr15_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr16_Sen1fw<-read.delim("chr16_sen1_wigwatson.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

chr1_Sen1rev<-read.delim("chr1_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr2_Sen1rev<-read.delim("chr2_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr3_Sen1rev<-read.delim("chr3_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr4_Sen1rev<-read.delim("chr4_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr5_Sen1rev<-read.delim("chr5_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr6_Sen1rev<-read.delim("chr6_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr7_Sen1rev<-read.delim("chr7_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr8_Sen1rev<-read.delim("chr8_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr9_Sen1rev<-read.delim("chr9_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr10_Sen1rev<-read.delim("chr10_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr11_Sen1rev<-read.delim("chr11_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr12_Sen1rev<-read.delim("chr12_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr13_Sen1rev<-read.delim("chr13_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr14_Sen1rev<-read.delim("chr14_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr15_Sen1rev<-read.delim("chr15_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr16_Sen1rev<-read.delim("chr16_sen1_wigcrick.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

colnames(chr1_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr2_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr3_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr4_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr5_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr6_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr7_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr8_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr9_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr10_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr11_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr12_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr13_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr14_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr15_Sen1fw)<- c("pos","Sen1_clip")
colnames(chr16_Sen1fw)<- c("pos","Sen1_clip")

colnames(chr1_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr2_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr3_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr4_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr5_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr6_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr7_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr8_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr9_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr10_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr11_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr12_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr13_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr14_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr15_Sen1rev)<- c("pos","Sen1_clip")
colnames(chr16_Sen1rev)<- c("pos","Sen1_clip")

library(plyr)
genedata_chr1fw_Sen1<- join(genedata_chr1fw,chr1_Sen1fw, by="pos")
genedata_chr2fw_Sen1<- join(genedata_chr2fw,chr2_Sen1fw, by="pos")
genedata_chr3fw_Sen1<- join(genedata_chr3fw,chr3_Sen1fw, by="pos")
genedata_chr4fw_Sen1<- join(genedata_chr4fw,chr4_Sen1fw, by="pos")
genedata_chr5fw_Sen1<- join(genedata_chr5fw,chr5_Sen1fw, by="pos")
genedata_chr6fw_Sen1<- join(genedata_chr6fw,chr6_Sen1fw, by="pos")
genedata_chr7fw_Sen1<- join(genedata_chr7fw,chr7_Sen1fw, by="pos")
genedata_chr8fw_Sen1<- join(genedata_chr8fw,chr8_Sen1fw, by="pos")
genedata_chr9fw_Sen1<- join(genedata_chr9fw,chr9_Sen1fw, by="pos")
genedata_chr10fw_Sen1<- join(genedata_chr10fw,chr10_Sen1fw, by="pos")
genedata_chr11fw_Sen1<- join(genedata_chr11fw,chr11_Sen1fw, by="pos")
genedata_chr12fw_Sen1<- join(genedata_chr12fw,chr12_Sen1fw, by="pos")
genedata_chr13fw_Sen1<- join(genedata_chr13fw,chr13_Sen1fw, by="pos")
genedata_chr14fw_Sen1<- join(genedata_chr14fw,chr14_Sen1fw, by="pos")
genedata_chr15fw_Sen1<- join(genedata_chr15fw,chr15_Sen1fw, by="pos")
genedata_chr16fw_Sen1<- join(genedata_chr16fw,chr16_Sen1fw, by="pos")

genedata_chr1rev_Sen1<- join(genedata_chr1rev,chr1_Sen1rev, by="pos")
genedata_chr2rev_Sen1<- join(genedata_chr2rev,chr2_Sen1rev, by="pos")
genedata_chr3rev_Sen1<- join(genedata_chr3rev,chr3_Sen1rev, by="pos")
genedata_chr4rev_Sen1<- join(genedata_chr4rev,chr4_Sen1rev, by="pos")
genedata_chr5rev_Sen1<- join(genedata_chr5rev,chr5_Sen1rev, by="pos")
genedata_chr6rev_Sen1<- join(genedata_chr6rev,chr6_Sen1rev, by="pos")
genedata_chr7rev_Sen1<- join(genedata_chr7rev,chr7_Sen1rev, by="pos")
genedata_chr8rev_Sen1<- join(genedata_chr8rev,chr8_Sen1rev, by="pos")
genedata_chr9rev_Sen1<- join(genedata_chr9rev,chr9_Sen1rev, by="pos")
genedata_chr10rev_Sen1<- join(genedata_chr10rev,chr10_Sen1rev, by="pos")
genedata_chr11rev_Sen1<- join(genedata_chr11rev,chr11_Sen1rev, by="pos")
genedata_chr12rev_Sen1<- join(genedata_chr12rev,chr12_Sen1rev, by="pos")
genedata_chr13rev_Sen1<- join(genedata_chr13rev,chr13_Sen1rev, by="pos")
genedata_chr14rev_Sen1<- join(genedata_chr14rev,chr14_Sen1rev, by="pos")
genedata_chr15rev_Sen1<- join(genedata_chr15rev,chr15_Sen1rev, by="pos")
genedata_chr16rev_Sen1<- join(genedata_chr16rev,chr16_Sen1rev, by="pos")

write.table(genedata_chr1fw_Sen1, file = "genedata_chr1fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fw_Sen1, file = "genedata_chr2fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fw_Sen1, file = "genedata_chr3fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fw_Sen1, file = "genedata_chr4fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fw_Sen1, file = "genedata_chr5fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fw_Sen1, file = "genedata_chr6fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fw_Sen1, file = "genedata_chr7fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fw_Sen1, file = "genedata_chr8fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fw_Sen1, file = "genedata_chr9fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fw_Sen1, file = "genedata_chr10fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fw_Sen1, file = "genedata_chr11fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fw_Sen1, file = "genedata_chr12fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fw_Sen1, file = "genedata_chr13fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fw_Sen1, file = "genedata_chr14fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fw_Sen1, file = "genedata_chr15fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fw_Sen1, file = "genedata_chr16fw_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1rev_Sen1, file = "genedata_chr1rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2rev_Sen1, file = "genedata_chr2rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3rev_Sen1, file = "genedata_chr3rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4rev_Sen1, file = "genedata_chr4rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5rev_Sen1, file = "genedata_chr5rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6rev_Sen1, file = "genedata_chr6rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7rev_Sen1, file = "genedata_chr7rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8rev_Sen1, file = "genedata_chr8rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9rev_Sen1, file = "genedata_chr9rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10rev_Sen1, file = "genedata_chr10rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11rev_Sen1, file = "genedata_chr11rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12rev_Sen1, file = "genedata_chr12rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13rev_Sen1, file = "genedata_chr13rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14rev_Sen1, file = "genedata_chr14rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15rev_Sen1, file = "genedata_chr15rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16rev_Sen1, file = "genedata_chr16rev_Sen1.txt", sep = "\t",row.names = F,col.names = T, quote=T)

#combine the genedata with norm icLIP reads with genedata that includes the snRNA locations
#make each data set the same number of columns so I can rbind
genedata_chr1rev_Sen1<-read.delim("genedata_chr1rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev_Sen1<-read.delim("genedata_chr2rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev_Sen1<-read.delim("genedata_chr3rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev_Sen1<-read.delim("genedata_chr4rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev_Sen1<-read.delim("genedata_chr5rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev_Sen1<-read.delim("genedata_chr6rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev_Sen1<-read.delim("genedata_chr7rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev_Sen1<-read.delim("genedata_chr8rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev_Sen1<-read.delim("genedata_chr9rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev_Sen1<-read.delim("genedata_chr10rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev_Sen1<-read.delim("genedata_chr11rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev_Sen1<-read.delim("genedata_chr12rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev_Sen1<-read.delim("genedata_chr13rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev_Sen1<-read.delim("genedata_chr14rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev_Sen1<-read.delim("genedata_chr15rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev_Sen1<-read.delim("genedata_chr16rev_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw_Sen1<-read.delim("genedata_chr1fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw_Sen1<-read.delim("genedata_chr2fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw_Sen1<-read.delim("genedata_chr3fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw_Sen1<-read.delim("genedata_chr4fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw_Sen1<-read.delim("genedata_chr5fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw_Sen1<-read.delim("genedata_chr6fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw_Sen1<-read.delim("genedata_chr7fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw_Sen1<-read.delim("genedata_chr8fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw_Sen1<-read.delim("genedata_chr9fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw_Sen1<-read.delim("genedata_chr10fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw_Sen1<-read.delim("genedata_chr11fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw_Sen1<-read.delim("genedata_chr12fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw_Sen1<-read.delim("genedata_chr13fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw_Sen1<-read.delim("genedata_chr14fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw_Sen1<-read.delim("genedata_chr15fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw_Sen1<-read.delim("genedata_chr16fw_Sen1.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#this if for the actual data
e<-c(1:6,8,12)
Sen1_genedata_chr1fw_end <-genedata_chr1fw_Sen1[,e]
Sen1_genedata_chr2fw_end <-genedata_chr2fw_Sen1[,e]
Sen1_genedata_chr3fw_end <-genedata_chr3fw_Sen1[,e]
Sen1_genedata_chr4fw_end <-genedata_chr4fw_Sen1[,e]
Sen1_genedata_chr5fw_end <-genedata_chr5fw_Sen1[,e]
Sen1_genedata_chr6fw_end <-genedata_chr6fw_Sen1[,e]
Sen1_genedata_chr7fw_end <-genedata_chr7fw_Sen1[,e]
Sen1_genedata_chr8fw_end <-genedata_chr8fw_Sen1[,e]
Sen1_genedata_chr9fw_end <-genedata_chr9fw_Sen1[,e]
Sen1_genedata_chr10fw_end <-genedata_chr10fw_Sen1[,e]
Sen1_genedata_chr11fw_end <-genedata_chr11fw_Sen1[,e]
Sen1_genedata_chr12fw_end <-genedata_chr12fw_Sen1[,e]
Sen1_genedata_chr13fw_end <-genedata_chr13fw_Sen1[,e]
Sen1_genedata_chr14fw_end <-genedata_chr14fw_Sen1[,e]
Sen1_genedata_chr15fw_end <-genedata_chr15fw_Sen1[,e]
Sen1_genedata_chr16fw_end <-genedata_chr16fw_Sen1[,e]

Sen1_genedata_chr1rev_end <-genedata_chr1rev_Sen1[,e]
Sen1_genedata_chr2rev_end <-genedata_chr2rev_Sen1[,e]
Sen1_genedata_chr3rev_end <-genedata_chr3rev_Sen1[,e]
Sen1_genedata_chr4rev_end <-genedata_chr4rev_Sen1[,e]
Sen1_genedata_chr5rev_end <-genedata_chr5rev_Sen1[,e]
Sen1_genedata_chr6rev_end <-genedata_chr6rev_Sen1[,e]
Sen1_genedata_chr7rev_end <-genedata_chr7rev_Sen1[,e]
Sen1_genedata_chr8rev_end <-genedata_chr8rev_Sen1[,e]
Sen1_genedata_chr9rev_end <-genedata_chr9rev_Sen1[,e]
Sen1_genedata_chr10rev_end <-genedata_chr10rev_Sen1[,e]
Sen1_genedata_chr11rev_end <-genedata_chr11rev_Sen1[,e]
Sen1_genedata_chr12rev_end <-genedata_chr12rev_Sen1[,e]
Sen1_genedata_chr13rev_end <-genedata_chr13rev_Sen1[,e]
Sen1_genedata_chr14rev_end <-genedata_chr14rev_Sen1[,e]
Sen1_genedata_chr15rev_end <-genedata_chr15rev_Sen1[,e]
Sen1_genedata_chr16rev_end <-genedata_chr16rev_Sen1[,e]

#keep 2,3,5,8,12 chr, pos, strand, gene
e<-c(1,2,3,5)
Sgenedata_chr1fw_Sen1 <-genedata_chr1fw_Sen1[,e]
Sgenedata_chr2fw_Sen1 <-genedata_chr2fw_Sen1[,e]
Sgenedata_chr3fw_Sen1 <-genedata_chr3fw_Sen1[,e]
Sgenedata_chr4fw_Sen1 <-genedata_chr4fw_Sen1[,e]
Sgenedata_chr5fw_Sen1 <-genedata_chr5fw_Sen1[,e]
Sgenedata_chr6fw_Sen1 <-genedata_chr6fw_Sen1[,e]
Sgenedata_chr7fw_Sen1 <-genedata_chr7fw_Sen1[,e]
Sgenedata_chr8fw_Sen1 <-genedata_chr8fw_Sen1[,e]
Sgenedata_chr9fw_Sen1 <-genedata_chr9fw_Sen1[,e]
Sgenedata_chr10fw_Sen1 <-genedata_chr10fw_Sen1[,e]
Sgenedata_chr11fw_Sen1 <-genedata_chr11fw_Sen1[,e]
Sgenedata_chr12fw_Sen1 <-genedata_chr12fw_Sen1[,e]
Sgenedata_chr13fw_Sen1 <-genedata_chr13fw_Sen1[,e]
Sgenedata_chr14fw_Sen1 <-genedata_chr14fw_Sen1[,e]
Sgenedata_chr15fw_Sen1 <-genedata_chr15fw_Sen1[,e]
Sgenedata_chr16fw_Sen1 <-genedata_chr16fw_Sen1[,e]

Sgenedata_chr1rev_Sen1 <-genedata_chr1rev_Sen1[,e]
Sgenedata_chr2rev_Sen1 <-genedata_chr2rev_Sen1[,e]
Sgenedata_chr3rev_Sen1 <-genedata_chr3rev_Sen1[,e]
Sgenedata_chr4rev_Sen1 <-genedata_chr4rev_Sen1[,e]
Sgenedata_chr5rev_Sen1 <-genedata_chr5rev_Sen1[,e]
Sgenedata_chr6rev_Sen1 <-genedata_chr6rev_Sen1[,e]
Sgenedata_chr7rev_Sen1 <-genedata_chr7rev_Sen1[,e]
Sgenedata_chr8rev_Sen1 <-genedata_chr8rev_Sen1[,e]
Sgenedata_chr9rev_Sen1 <-genedata_chr9rev_Sen1[,e]
Sgenedata_chr10rev_Sen1 <-genedata_chr10rev_Sen1[,e]
Sgenedata_chr11rev_Sen1 <-genedata_chr11rev_Sen1[,e]
Sgenedata_chr12rev_Sen1 <-genedata_chr12rev_Sen1[,e]
Sgenedata_chr13rev_Sen1 <-genedata_chr13rev_Sen1[,e]
Sgenedata_chr14rev_Sen1 <-genedata_chr14rev_Sen1[,e]
Sgenedata_chr15rev_Sen1 <-genedata_chr15rev_Sen1[,e]
Sgenedata_chr16rev_Sen1 <-genedata_chr16rev_Sen1[,e]


#imported from Metagene script
colnames(chr1_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr2_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr3_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr4_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr5_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr6_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr7_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr8_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr9_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr10_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr11_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr12_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr13_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr14_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr15_snRNA_CDf)<- c("chr","pos","strand","feature","gene")
colnames(chr16_snRNA_CDf)<- c("chr","pos","strand","feature","gene")

colnames(chr1_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr2_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr3_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr4_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr5_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr6_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr7_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr8_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr9_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr10_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr11_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr12_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr13_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr14_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr15_snRNA_CDr)<- c("chr","pos","strand","feature","gene")
colnames(chr16_snRNA_CDr)<- c("chr","pos","strand","feature","gene")

#want to make the data sets the same size to concatonate 
e<-c(1,2,3,5)
chr1_snRNA_CDf <-chr1_snRNA_CDf[,e]
chr2_snRNA_CDf <-chr2_snRNA_CDf[,e]
chr3_snRNA_CDf <-chr3_snRNA_CDf[,e]
chr4_snRNA_CDf <-chr4_snRNA_CDf[,e]
chr5_snRNA_CDf <-chr5_snRNA_CDf[,e]
chr6_snRNA_CDf <-chr6_snRNA_CDf[,e]
chr7_snRNA_CDf <-chr7_snRNA_CDf[,e]
chr8_snRNA_CDf <-chr8_snRNA_CDf[,e]
chr9_snRNA_CDf <-chr9_snRNA_CDf[,e]
chr10_snRNA_CDf <-chr10_snRNA_CDf[,e]
chr11_snRNA_CDf <-chr11_snRNA_CDf[,e]
chr12_snRNA_CDf <-chr12_snRNA_CDf[,e]
chr13_snRNA_CDf <-chr13_snRNA_CDf[,e]
chr14_snRNA_CDf <-chr14_snRNA_CDf[,e]
chr15_snRNA_CDf <-chr15_snRNA_CDf[,e]
chr16_snRNA_CDf <-chr16_snRNA_CDf[,e]

chr1_snRNA_CDr <-chr1_snRNA_CDr[,e]
chr2_snRNA_CDr <-chr2_snRNA_CDr[,e]
chr3_snRNA_CDr <-chr3_snRNA_CDr[,e]
chr4_snRNA_CDr <-chr4_snRNA_CDr[,e]
chr5_snRNA_CDr <-chr5_snRNA_CDr[,e]
chr6_snRNA_CDr <-chr6_snRNA_CDr[,e]
chr7_snRNA_CDr <-chr7_snRNA_CDr[,e]
chr8_snRNA_CDr <-chr8_snRNA_CDr[,e]
chr9_snRNA_CDr <-chr9_snRNA_CDr[,e]
chr10_snRNA_CDr <-chr10_snRNA_CDr[,e]
chr11_snRNA_CDr <-chr11_snRNA_CDr[,e]
chr12_snRNA_CDr <-chr12_snRNA_CDr[,e]
chr13_snRNA_CDr <-chr13_snRNA_CDr[,e]
chr14_snRNA_CDr <-chr14_snRNA_CDr[,e]
chr15_snRNA_CDr <-chr15_snRNA_CDr[,e]
chr16_snRNA_CDr <-chr16_snRNA_CDr[,e]

e<-c(1,2,3,5)
chr1_snRNA_Hf <-chr1_snRNA_Hf[,e]
chr2_snRNA_Hf <-chr2_snRNA_Hf[,e]
chr3_snRNA_Hf <-chr3_snRNA_Hf[,e]
chr4_snRNA_Hf <-chr4_snRNA_Hf[,e]
chr5_snRNA_Hf <-chr5_snRNA_Hf[,e]
chr6_snRNA_Hf <-chr6_snRNA_Hf[,e]
chr7_snRNA_Hf <-chr7_snRNA_Hf[,e]
chr8_snRNA_Hf <-chr8_snRNA_Hf[,e]
chr9_snRNA_Hf <-chr9_snRNA_Hf[,e]
chr10_snRNA_Hf <-chr10_snRNA_Hf[,e]
chr11_snRNA_Hf <-chr11_snRNA_Hf[,e]
chr12_snRNA_Hf <-chr12_snRNA_Hf[,e]
chr13_snRNA_Hf <-chr13_snRNA_Hf[,e]
chr14_snRNA_Hf <-chr14_snRNA_Hf[,e]
chr15_snRNA_Hf <-chr15_snRNA_Hf[,e]
chr16_snRNA_Hf <-chr16_snRNA_Hf[,e]

chr1_snRNA_Hr <-chr1_snRNA_Hr[,e]
chr2_snRNA_Hr <-chr2_snRNA_Hr[,e]
chr3_snRNA_Hr <-chr3_snRNA_Hr[,e]
chr4_snRNA_Hr <-chr4_snRNA_Hr[,e]
chr5_snRNA_Hr <-chr5_snRNA_Hr[,e]
chr6_snRNA_Hr <-chr6_snRNA_Hr[,e]
chr7_snRNA_Hr <-chr7_snRNA_Hr[,e]
chr8_snRNA_Hr <-chr8_snRNA_Hr[,e]
chr9_snRNA_Hr <-chr9_snRNA_Hr[,e]
chr10_snRNA_Hr <-chr10_snRNA_Hr[,e]
chr11_snRNA_Hr <-chr11_snRNA_Hr[,e]
chr12_snRNA_Hr <-chr12_snRNA_Hr[,e]
chr13_snRNA_Hr <-chr13_snRNA_Hr[,e]
chr14_snRNA_Hr <-chr14_snRNA_Hr[,e]
chr15_snRNA_Hr <-chr15_snRNA_Hr[,e]
chr16_snRNA_Hr <-chr16_snRNA_Hr[,e]

#rbind data sets concatenates the datasets


genedata_chr1fw_snRNA_CD <- rbind(Sgenedata_chr1fw_Sen1,chr1_snRNA_CDf,chr1_snRNA_Hf)
genedata_chr2fw_snRNA_CD <- rbind(Sgenedata_chr2fw_Sen1,chr2_snRNA_CDf,chr2_snRNA_Hf)
genedata_chr3fw_snRNA_CD <- rbind(Sgenedata_chr3fw_Sen1,chr3_snRNA_CDf,chr3_snRNA_Hf)
genedata_chr4fw_snRNA_CD <- rbind(Sgenedata_chr4fw_Sen1,chr4_snRNA_CDf,chr4_snRNA_Hf)
genedata_chr5fw_snRNA_CD <- rbind(Sgenedata_chr5fw_Sen1,chr5_snRNA_CDf,chr5_snRNA_Hf)
genedata_chr6fw_snRNA_CD <- rbind(Sgenedata_chr6fw_Sen1,chr6_snRNA_CDf,chr6_snRNA_Hf)
genedata_chr7fw_snRNA_CD <- rbind(Sgenedata_chr7fw_Sen1,chr7_snRNA_CDf,chr7_snRNA_Hf)
genedata_chr8fw_snRNA_CD <- rbind(Sgenedata_chr8fw_Sen1,chr8_snRNA_CDf,chr8_snRNA_Hf)
genedata_chr9fw_snRNA_CD <- rbind(Sgenedata_chr9fw_Sen1,chr9_snRNA_CDf,chr9_snRNA_Hf)
genedata_chr10fw_snRNA_CD <- rbind(Sgenedata_chr10fw_Sen1,chr10_snRNA_CDf,chr10_snRNA_Hf)
genedata_chr11fw_snRNA_CD <- rbind(Sgenedata_chr11fw_Sen1,chr11_snRNA_CDf,chr11_snRNA_Hf)
genedata_chr12fw_snRNA_CD <- rbind(Sgenedata_chr12fw_Sen1,chr12_snRNA_CDf,chr12_snRNA_Hf)
genedata_chr13fw_snRNA_CD <- rbind(Sgenedata_chr13fw_Sen1,chr13_snRNA_CDf,chr13_snRNA_Hf)
genedata_chr14fw_snRNA_CD <- rbind(Sgenedata_chr14fw_Sen1,chr14_snRNA_CDf,chr14_snRNA_Hf)
genedata_chr15fw_snRNA_CD <- rbind(Sgenedata_chr15fw_Sen1,chr15_snRNA_CDf,chr15_snRNA_Hf)
genedata_chr16fw_snRNA_CD <- rbind(Sgenedata_chr16fw_Sen1,chr16_snRNA_CDf,chr16_snRNA_Hf)

genedata_chr1rev_snRNA_CD <- rbind(Sgenedata_chr1rev_Sen1,chr1_snRNA_CDr,chr1_snRNA_Hr)
genedata_chr2rev_snRNA_CD <- rbind(Sgenedata_chr2rev_Sen1,chr2_snRNA_CDr,chr2_snRNA_Hr)
genedata_chr3rev_snRNA_CD <- rbind(Sgenedata_chr3rev_Sen1,chr3_snRNA_CDr,chr3_snRNA_Hr)
genedata_chr4rev_snRNA_CD <- rbind(Sgenedata_chr4rev_Sen1,chr4_snRNA_CDr,chr4_snRNA_Hr)
genedata_chr5rev_snRNA_CD <- rbind(Sgenedata_chr5rev_Sen1,chr5_snRNA_CDr,chr5_snRNA_Hr)
genedata_chr6rev_snRNA_CD <- rbind(Sgenedata_chr6rev_Sen1,chr6_snRNA_CDr,chr6_snRNA_Hr)
genedata_chr7rev_snRNA_CD <- rbind(Sgenedata_chr7rev_Sen1,chr7_snRNA_CDr,chr7_snRNA_Hr)
genedata_chr8rev_snRNA_CD <- rbind(Sgenedata_chr8rev_Sen1,chr8_snRNA_CDr,chr8_snRNA_Hr)
genedata_chr9rev_snRNA_CD <- rbind(Sgenedata_chr9rev_Sen1,chr9_snRNA_CDr,chr9_snRNA_Hr)
genedata_chr10rev_snRNA_CD <- rbind(Sgenedata_chr10rev_Sen1,chr10_snRNA_CDr,chr10_snRNA_Hr)
genedata_chr11rev_snRNA_CD <- rbind(Sgenedata_chr11rev_Sen1,chr11_snRNA_CDr,chr11_snRNA_Hr)
genedata_chr12rev_snRNA_CD <- rbind(Sgenedata_chr12rev_Sen1,chr12_snRNA_CDr,chr12_snRNA_Hr)
genedata_chr13rev_snRNA_CD <- rbind(Sgenedata_chr13rev_Sen1,chr13_snRNA_CDr,chr13_snRNA_Hr)
genedata_chr14rev_snRNA_CD <- rbind(Sgenedata_chr14rev_Sen1,chr14_snRNA_CDr,chr14_snRNA_Hr)
genedata_chr15rev_snRNA_CD <- rbind(Sgenedata_chr15rev_Sen1,chr15_snRNA_CDr,chr15_snRNA_Hr)
genedata_chr16rev_snRNA_CD <- rbind(Sgenedata_chr16rev_Sen1,chr16_snRNA_CDr,chr16_snRNA_Hr)
#Save this
write.table(genedata_chr1fw_snRNA_CD, file = "genedata_chr1fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fw_snRNA_CD, file = "genedata_chr2fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fw_snRNA_CD, file = "genedata_chr3fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fw_snRNA_CD, file = "genedata_chr4fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fw_snRNA_CD, file = "genedata_chr5fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fw_snRNA_CD, file = "genedata_chr6fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fw_snRNA_CD, file = "genedata_chr7fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fw_snRNA_CD, file = "genedata_chr8fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fw_snRNA_CD, file = "genedata_chr9fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fw_snRNA_CD, file = "genedata_chr10fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fw_snRNA_CD, file = "genedata_chr11fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fw_snRNA_CD, file = "genedata_chr12fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fw_snRNA_CD, file = "genedata_chr13fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fw_snRNA_CD, file = "genedata_chr14fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fw_snRNA_CD, file = "genedata_chr15fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fw_snRNA_CD, file = "genedata_chr16fw_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1rev_snRNA_CD, file = "genedata_chr1rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2rev_snRNA_CD, file = "genedata_chr2rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3rev_snRNA_CD, file = "genedata_chr3rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4rev_snRNA_CD, file = "genedata_chr4rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5rev_snRNA_CD, file = "genedata_chr5rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6rev_snRNA_CD, file = "genedata_chr6rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7rev_snRNA_CD, file = "genedata_chr7rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8rev_snRNA_CD, file = "genedata_chr8rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9rev_snRNA_CD, file = "genedata_chr9rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10rev_snRNA_CD, file = "genedata_chr10rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11rev_snRNA_CD, file = "genedata_chr11rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12rev_snRNA_CD, file = "genedata_chr12rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13rev_snRNA_CD, file = "genedata_chr13rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14rev_snRNA_CD, file = "genedata_chr14rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15rev_snRNA_CD, file = "genedata_chr15rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16rev_snRNA_CD, file = "genedata_chr16rev_snRNA_CD_HACA.txt", sep = "\t",row.names = F,col.names = T, quote=T)

genedata_chr1rev_snRNA_CD<-read.delim("genedata_chr1rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev_snRNA_CD<-read.delim("genedata_chr2rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev_snRNA_CD<-read.delim("genedata_chr3rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev_snRNA_CD<-read.delim("genedata_chr4rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev_snRNA_CD<-read.delim("genedata_chr5rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev_snRNA_CD<-read.delim("genedata_chr6rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev_snRNA_CD<-read.delim("genedata_chr7rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev_snRNA_CD<-read.delim("genedata_chr8rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev_snRNA_CD<-read.delim("genedata_chr9rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev_snRNA_CD<-read.delim("genedata_chr10rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev_snRNA_CD<-read.delim("genedata_chr11rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev_snRNA_CD<-read.delim("genedata_chr12rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev_snRNA_CD<-read.delim("genedata_chr13rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev_snRNA_CD<-read.delim("genedata_chr14rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev_snRNA_CD<-read.delim("genedata_chr15rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev_snRNA_CD<-read.delim("genedata_chr16rev_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw_snRNA_CD<-read.delim("genedata_chr1fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw_snRNA_CD<-read.delim("genedata_chr2fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw_snRNA_CD<-read.delim("genedata_chr3fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw_snRNA_CD<-read.delim("genedata_chr4fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw_snRNA_CD<-read.delim("genedata_chr5fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw_snRNA_CD<-read.delim("genedata_chr6fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw_snRNA_CD<-read.delim("genedata_chr7fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw_snRNA_CD<-read.delim("genedata_chr8fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw_snRNA_CD<-read.delim("genedata_chr9fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw_snRNA_CD<-read.delim("genedata_chr10fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw_snRNA_CD<-read.delim("genedata_chr11fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw_snRNA_CD<-read.delim("genedata_chr12fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw_snRNA_CD<-read.delim("genedata_chr13fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw_snRNA_CD<-read.delim("genedata_chr14fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw_snRNA_CD<-read.delim("genedata_chr15fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw_snRNA_CD<-read.delim("genedata_chr16fw_snRNA_CD_HACA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


######## Adding tRNAs to the gene coloumn#################

##make the tRNA file just four columns first. chr, pos, gene, strand
e<-c(1,2,3,5)
chr1_tRNAf <-chr1_tRNAf[,e]
chr2_tRNAf <-chr2_tRNAf[,e]
chr3_tRNAf <-chr3_tRNAf[,e]
chr4_tRNAf <-chr4_tRNAf[,e]
chr5_tRNAf <-chr5_tRNAf[,e]
chr6_tRNAf <-chr6_tRNAf[,e]
chr7_tRNAf <-chr7_tRNAf[,e]
chr8_tRNAf <-chr8_tRNAf[,e]
chr9_tRNAf <-chr9_tRNAf[,e]
chr10_tRNAf <-chr10_tRNAf[,e]
chr11_tRNAf <-chr11_tRNAf[,e]
chr12_tRNAf <-chr12_tRNAf[,e]
chr13_tRNAf <-chr13_tRNAf[,e]
chr14_tRNAf <-chr14_tRNAf[,e]
chr15_tRNAf <-chr15_tRNAf[,e]
chr16_tRNAf <-chr16_tRNAf[,e]

chr1_tRNAr <-chr1_tRNAr[,e]
chr2_tRNAr <-chr2_tRNAr[,e]
chr3_tRNAr <-chr3_tRNAr[,e]
chr4_tRNAr <-chr4_tRNAr[,e]
chr5_tRNAr <-chr5_tRNAr[,e]
chr6_tRNAr <-chr6_tRNAr[,e]
chr7_tRNAr <-chr7_tRNAr[,e]
chr8_tRNAr <-chr8_tRNAr[,e]
chr9_tRNAr <-chr9_tRNAr[,e]
chr10_tRNAr <-chr10_tRNAr[,e]
chr11_tRNAr <-chr11_tRNAr[,e]
chr12_tRNAr <-chr12_tRNAr[,e]
chr13_tRNAr <-chr13_tRNAr[,e]
chr14_tRNAr <-chr14_tRNAr[,e]
chr15_tRNAr <-chr15_tRNAr[,e]
chr16_tRNAr <-chr16_tRNAr[,e]



genedata_chr1fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr1fw_snRNA_CD, chr1_tRNAf)
genedata_chr2fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr2fw_snRNA_CD, chr2_tRNAf)
genedata_chr3fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr3fw_snRNA_CD, chr3_tRNAf)
genedata_chr4fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr4fw_snRNA_CD, chr4_tRNAf)
genedata_chr5fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr5fw_snRNA_CD, chr5_tRNAf)
genedata_chr6fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr6fw_snRNA_CD, chr6_tRNAf)
genedata_chr7fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr7fw_snRNA_CD, chr7_tRNAf)
genedata_chr8fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr8fw_snRNA_CD, chr8_tRNAf)
genedata_chr9fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr9fw_snRNA_CD, chr9_tRNAf)
genedata_chr10fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr10fw_snRNA_CD, chr10_tRNAf)
genedata_chr11fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr11fw_snRNA_CD, chr11_tRNAf)
genedata_chr12fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr12fw_snRNA_CD, chr12_tRNAf)
genedata_chr13fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr13fw_snRNA_CD, chr13_tRNAf)
genedata_chr14fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr14fw_snRNA_CD, chr14_tRNAf)
genedata_chr15fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr15fw_snRNA_CD, chr15_tRNAf)
genedata_chr16fw_snoRNA_tRNA_mRNA <- rbind(genedata_chr16fw_snRNA_CD, chr16_tRNAf)

genedata_chr1rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr1rev_snRNA_CD, chr1_tRNAr)
genedata_chr2rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr2rev_snRNA_CD, chr2_tRNAr)
genedata_chr3rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr3rev_snRNA_CD, chr3_tRNAr)
genedata_chr4rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr4rev_snRNA_CD, chr4_tRNAr)
genedata_chr5rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr5rev_snRNA_CD, chr5_tRNAr)
genedata_chr6rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr6rev_snRNA_CD, chr6_tRNAr)
genedata_chr7rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr7rev_snRNA_CD, chr7_tRNAr)
genedata_chr8rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr8rev_snRNA_CD, chr8_tRNAr)
genedata_chr9rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr9rev_snRNA_CD, chr9_tRNAr)
genedata_chr10rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr10rev_snRNA_CD, chr10_tRNAr)
genedata_chr11rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr11rev_snRNA_CD, chr11_tRNAr)
genedata_chr12rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr12rev_snRNA_CD, chr12_tRNAr)
genedata_chr13rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr13rev_snRNA_CD, chr13_tRNAr)
genedata_chr14rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr14rev_snRNA_CD, chr14_tRNAr)
genedata_chr15rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr15rev_snRNA_CD, chr15_tRNAr)
genedata_chr16rev_snoRNA_tRNA_mRNA <- rbind(genedata_chr16rev_snRNA_CD, chr16_tRNAr)
##get rid of unassigned
genedata_chr1fw_snoRNA_tRNA_mRNA <- genedata_chr1fw_snoRNA_tRNA_mRNA[ which(genedata_chr1fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr2fw_snoRNA_tRNA_mRNA <- genedata_chr2fw_snoRNA_tRNA_mRNA[ which(genedata_chr2fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr3fw_snoRNA_tRNA_mRNA <- genedata_chr3fw_snoRNA_tRNA_mRNA[ which(genedata_chr3fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr4fw_snoRNA_tRNA_mRNA <- genedata_chr4fw_snoRNA_tRNA_mRNA[ which(genedata_chr4fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr5fw_snoRNA_tRNA_mRNA <- genedata_chr5fw_snoRNA_tRNA_mRNA[ which(genedata_chr5fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr6fw_snoRNA_tRNA_mRNA <- genedata_chr6fw_snoRNA_tRNA_mRNA[ which(genedata_chr6fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr7fw_snoRNA_tRNA_mRNA <- genedata_chr7fw_snoRNA_tRNA_mRNA[ which(genedata_chr7fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr8fw_snoRNA_tRNA_mRNA <- genedata_chr8fw_snoRNA_tRNA_mRNA[ which(genedata_chr8fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr9fw_snoRNA_tRNA_mRNA <- genedata_chr9fw_snoRNA_tRNA_mRNA[ which(genedata_chr9fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr10fw_snoRNA_tRNA_mRNA <- genedata_chr10fw_snoRNA_tRNA_mRNA[ which(genedata_chr10fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr11fw_snoRNA_tRNA_mRNA <- genedata_chr11fw_snoRNA_tRNA_mRNA[ which(genedata_chr11fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr12fw_snoRNA_tRNA_mRNA <- genedata_chr12fw_snoRNA_tRNA_mRNA[ which(genedata_chr12fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr13fw_snoRNA_tRNA_mRNA <- genedata_chr13fw_snoRNA_tRNA_mRNA[ which(genedata_chr13fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr14fw_snoRNA_tRNA_mRNA <- genedata_chr14fw_snoRNA_tRNA_mRNA[ which(genedata_chr14fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr15fw_snoRNA_tRNA_mRNA <- genedata_chr15fw_snoRNA_tRNA_mRNA[ which(genedata_chr15fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr16fw_snoRNA_tRNA_mRNA <- genedata_chr16fw_snoRNA_tRNA_mRNA[ which(genedata_chr16fw_snoRNA_tRNA_mRNA$gene!="unassigned"),]

genedata_chr1rev_snoRNA_tRNA_mRNA <- genedata_chr1rev_snoRNA_tRNA_mRNA[ which(genedata_chr1rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr2rev_snoRNA_tRNA_mRNA <- genedata_chr2rev_snoRNA_tRNA_mRNA[ which(genedata_chr2rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr3rev_snoRNA_tRNA_mRNA <- genedata_chr3rev_snoRNA_tRNA_mRNA[ which(genedata_chr3rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr4rev_snoRNA_tRNA_mRNA <- genedata_chr4rev_snoRNA_tRNA_mRNA[ which(genedata_chr4rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr5rev_snoRNA_tRNA_mRNA <- genedata_chr5rev_snoRNA_tRNA_mRNA[ which(genedata_chr5rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr6rev_snoRNA_tRNA_mRNA <- genedata_chr6rev_snoRNA_tRNA_mRNA[ which(genedata_chr6rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr7rev_snoRNA_tRNA_mRNA <- genedata_chr7rev_snoRNA_tRNA_mRNA[ which(genedata_chr7rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr8rev_snoRNA_tRNA_mRNA <- genedata_chr8rev_snoRNA_tRNA_mRNA[ which(genedata_chr8rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr9rev_snoRNA_tRNA_mRNA <- genedata_chr9rev_snoRNA_tRNA_mRNA[ which(genedata_chr9rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr10rev_snoRNA_tRNA_mRNA <- genedata_chr10rev_snoRNA_tRNA_mRNA[ which(genedata_chr10rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr11rev_snoRNA_tRNA_mRNA <- genedata_chr11rev_snoRNA_tRNA_mRNA[ which(genedata_chr11rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr12rev_snoRNA_tRNA_mRNA <- genedata_chr12rev_snoRNA_tRNA_mRNA[ which(genedata_chr12rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr13rev_snoRNA_tRNA_mRNA <- genedata_chr13rev_snoRNA_tRNA_mRNA[ which(genedata_chr13rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr14rev_snoRNA_tRNA_mRNA <- genedata_chr14rev_snoRNA_tRNA_mRNA[ which(genedata_chr14rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr15rev_snoRNA_tRNA_mRNA <- genedata_chr15rev_snoRNA_tRNA_mRNA[ which(genedata_chr15rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
genedata_chr16rev_snoRNA_tRNA_mRNA <- genedata_chr16rev_snoRNA_tRNA_mRNA[ which(genedata_chr16rev_snoRNA_tRNA_mRNA$gene!="unassigned"),]
##sort by pos
genedata_chr1fw_snoRNA_tRNA_mRNA_sort <- genedata_chr1fw_snoRNA_tRNA_mRNA[order(genedata_chr1fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr2fw_snoRNA_tRNA_mRNA_sort <- genedata_chr2fw_snoRNA_tRNA_mRNA[order(genedata_chr2fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr3fw_snoRNA_tRNA_mRNA_sort <- genedata_chr3fw_snoRNA_tRNA_mRNA[order(genedata_chr3fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr4fw_snoRNA_tRNA_mRNA_sort <- genedata_chr4fw_snoRNA_tRNA_mRNA[order(genedata_chr4fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr5fw_snoRNA_tRNA_mRNA_sort <- genedata_chr5fw_snoRNA_tRNA_mRNA[order(genedata_chr5fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr6fw_snoRNA_tRNA_mRNA_sort <- genedata_chr6fw_snoRNA_tRNA_mRNA[order(genedata_chr6fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr7fw_snoRNA_tRNA_mRNA_sort <- genedata_chr7fw_snoRNA_tRNA_mRNA[order(genedata_chr7fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr8fw_snoRNA_tRNA_mRNA_sort <- genedata_chr8fw_snoRNA_tRNA_mRNA[order(genedata_chr8fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr9fw_snoRNA_tRNA_mRNA_sort <- genedata_chr9fw_snoRNA_tRNA_mRNA[order(genedata_chr9fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr10fw_snoRNA_tRNA_mRNA_sort <- genedata_chr10fw_snoRNA_tRNA_mRNA[order(genedata_chr10fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr11fw_snoRNA_tRNA_mRNA_sort <- genedata_chr11fw_snoRNA_tRNA_mRNA[order(genedata_chr11fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr12fw_snoRNA_tRNA_mRNA_sort <- genedata_chr12fw_snoRNA_tRNA_mRNA[order(genedata_chr12fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr13fw_snoRNA_tRNA_mRNA_sort <- genedata_chr13fw_snoRNA_tRNA_mRNA[order(genedata_chr13fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr14fw_snoRNA_tRNA_mRNA_sort <- genedata_chr14fw_snoRNA_tRNA_mRNA[order(genedata_chr14fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr15fw_snoRNA_tRNA_mRNA_sort <- genedata_chr15fw_snoRNA_tRNA_mRNA[order(genedata_chr15fw_snoRNA_tRNA_mRNA$pos),]
genedata_chr16fw_snoRNA_tRNA_mRNA_sort <- genedata_chr16fw_snoRNA_tRNA_mRNA[order(genedata_chr16fw_snoRNA_tRNA_mRNA$pos),]

genedata_chr1rev_snoRNA_tRNA_mRNA_sort <- genedata_chr1rev_snoRNA_tRNA_mRNA[order(genedata_chr1rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr2rev_snoRNA_tRNA_mRNA_sort <- genedata_chr2rev_snoRNA_tRNA_mRNA[order(genedata_chr2rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr3rev_snoRNA_tRNA_mRNA_sort <- genedata_chr3rev_snoRNA_tRNA_mRNA[order(genedata_chr3rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr4rev_snoRNA_tRNA_mRNA_sort <- genedata_chr4rev_snoRNA_tRNA_mRNA[order(genedata_chr4rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr5rev_snoRNA_tRNA_mRNA_sort <- genedata_chr5rev_snoRNA_tRNA_mRNA[order(genedata_chr5rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr6rev_snoRNA_tRNA_mRNA_sort <- genedata_chr6rev_snoRNA_tRNA_mRNA[order(genedata_chr6rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr7rev_snoRNA_tRNA_mRNA_sort <- genedata_chr7rev_snoRNA_tRNA_mRNA[order(genedata_chr7rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr8rev_snoRNA_tRNA_mRNA_sort <- genedata_chr8rev_snoRNA_tRNA_mRNA[order(genedata_chr8rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr9rev_snoRNA_tRNA_mRNA_sort <- genedata_chr9rev_snoRNA_tRNA_mRNA[order(genedata_chr9rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr10rev_snoRNA_tRNA_mRNA_sort <- genedata_chr10rev_snoRNA_tRNA_mRNA[order(genedata_chr10rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr11rev_snoRNA_tRNA_mRNA_sort <- genedata_chr11rev_snoRNA_tRNA_mRNA[order(genedata_chr11rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr12rev_snoRNA_tRNA_mRNA_sort <- genedata_chr12rev_snoRNA_tRNA_mRNA[order(genedata_chr12rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr13rev_snoRNA_tRNA_mRNA_sort <- genedata_chr13rev_snoRNA_tRNA_mRNA[order(genedata_chr13rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr14rev_snoRNA_tRNA_mRNA_sort <- genedata_chr14rev_snoRNA_tRNA_mRNA[order(genedata_chr14rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr15rev_snoRNA_tRNA_mRNA_sort <- genedata_chr15rev_snoRNA_tRNA_mRNA[order(genedata_chr15rev_snoRNA_tRNA_mRNA$pos),]
genedata_chr16rev_snoRNA_tRNA_mRNA_sort <- genedata_chr16rev_snoRNA_tRNA_mRNA[order(genedata_chr16rev_snoRNA_tRNA_mRNA$pos),]

genedata_chr1fw_S1<- join(genedata_chr1fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr1fw_end, by="pos")
genedata_chr2fw_S1<- join(genedata_chr2fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr2fw_end, by="pos")
genedata_chr3fw_S1<- join(genedata_chr3fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr3fw_end, by="pos")
genedata_chr4fw_S1<- join(genedata_chr4fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr4fw_end, by="pos")
genedata_chr5fw_S1<- join(genedata_chr5fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr5fw_end, by="pos")
genedata_chr6fw_S1<- join(genedata_chr6fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr6fw_end, by="pos")
genedata_chr7fw_S1<- join(genedata_chr7fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr7fw_end, by="pos")
genedata_chr8fw_S1<- join(genedata_chr8fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr8fw_end, by="pos")
genedata_chr9fw_S1<- join(genedata_chr9fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr9fw_end, by="pos")
genedata_chr10fw_S1<- join(genedata_chr10fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr10fw_end, by="pos")
genedata_chr11fw_S1<- join(genedata_chr11fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr11fw_end, by="pos")
genedata_chr12fw_S1<- join(genedata_chr12fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr12fw_end, by="pos")
genedata_chr13fw_S1<- join(genedata_chr13fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr13fw_end, by="pos")
genedata_chr14fw_S1<- join(genedata_chr14fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr14fw_end, by="pos")
genedata_chr15fw_S1<- join(genedata_chr15fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr15fw_end, by="pos")
genedata_chr16fw_S1<- join(genedata_chr16fw_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr16fw_end, by="pos")

genedata_chr1rev_S1<- join(genedata_chr1rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr1rev_end, by="pos")
genedata_chr2rev_S1<- join(genedata_chr2rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr2rev_end, by="pos")
genedata_chr3rev_S1<- join(genedata_chr3rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr3rev_end, by="pos")
genedata_chr4rev_S1<- join(genedata_chr4rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr4rev_end, by="pos")
genedata_chr5rev_S1<- join(genedata_chr5rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr5rev_end, by="pos")
genedata_chr6rev_S1<- join(genedata_chr6rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr6rev_end, by="pos")
genedata_chr7rev_S1<- join(genedata_chr7rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr7rev_end, by="pos")
genedata_chr8rev_S1<- join(genedata_chr8rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr8rev_end, by="pos")
genedata_chr9rev_S1<- join(genedata_chr9rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr9rev_end, by="pos")
genedata_chr10rev_S1<- join(genedata_chr10rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr10rev_end, by="pos")
genedata_chr11rev_S1<- join(genedata_chr11rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr11rev_end, by="pos")
genedata_chr12rev_S1<- join(genedata_chr12rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr12rev_end, by="pos")
genedata_chr13rev_S1<- join(genedata_chr13rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr13rev_end, by="pos")
genedata_chr14rev_S1<- join(genedata_chr14rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr14rev_end, by="pos")
genedata_chr15rev_S1<- join(genedata_chr15rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr15rev_end, by="pos")
genedata_chr16rev_S1<- join(genedata_chr16rev_snoRNA_tRNA_mRNA_sort,Sen1_genedata_chr16rev_end, by="pos")

write.table(genedata_chr1rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr1rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr2rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr3rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr4rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr5rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr6rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr7rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr8rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr9rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr10rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr11rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr12rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr13rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr14rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr15rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16rev_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr16rev.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr1fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr2fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr3fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr4fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr5fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr6fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr7fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr8fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr9fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr10fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr11fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr12fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr13fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr14fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr15fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fw_S1, file = "MasterGeneData_sno_t_mRNA_D2repS1_chr16fw.txt", sep = "\t",row.names = F,col.names = T, quote=T)

MasterGeneData_Chr1rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr1rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr2rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr2rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr3rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr3rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr4rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr4rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr5rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr5rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr6rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr6rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr7rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr7rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr8rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr8rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr9rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr9rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr10rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr10rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr11rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr11rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr12rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr12rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr13rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr13rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr14rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr14rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr15rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr15rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr16rev<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr16rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

MasterGeneData_Chr1fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr1fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr2fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr2fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr3fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr3fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr4fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr4fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr5fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr5fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr6fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr6fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr7fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr7fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr8fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr8fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr9fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr9fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr10fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr10fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr11fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr11fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr12fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr12fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr13fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr13fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr14fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr14fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr15fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr15fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_Chr16fw<-read.delim("MasterGeneData_sno_t_mRNA_D2repS1_chr16fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


################Keep only the iCLIP data and gene col
##Dbp2rep Norm##
g <- c(4,10)
genedata_chr1revS1_gene_iclip<-MasterGeneData_Chr1rev[,g]
genedata_chr2revS1_gene_iclip<-MasterGeneData_Chr2rev[,g]
genedata_chr3revS1_gene_iclip<-MasterGeneData_Chr3rev[,g]
genedata_chr4revS1_gene_iclip<-MasterGeneData_Chr4rev[,g]
genedata_chr5revS1_gene_iclip<-MasterGeneData_Chr5rev[,g]
genedata_chr6revS1_gene_iclip<-MasterGeneData_Chr6rev[,g]
genedata_chr7revS1_gene_iclip<-MasterGeneData_Chr7rev[,g]
genedata_chr8revS1_gene_iclip<-MasterGeneData_Chr8rev[,g]
genedata_chr9revS1_gene_iclip<-MasterGeneData_Chr9rev[,g]
genedata_chr10revS1_gene_iclip<-MasterGeneData_Chr10rev[,g]
genedata_chr11revS1_gene_iclip<-MasterGeneData_Chr11rev[,g]
genedata_chr12revS1_gene_iclip<-MasterGeneData_Chr12rev[,g]
genedata_chr13revS1_gene_iclip<-MasterGeneData_Chr13rev[,g]
genedata_chr14revS1_gene_iclip<-MasterGeneData_Chr14rev[,g]
genedata_chr15revS1_gene_iclip<-MasterGeneData_Chr15rev[,g]
genedata_chr16revS1_gene_iclip<-MasterGeneData_Chr16rev[,g]

genedata_chr1fwS1_gene_iclip<-MasterGeneData_Chr1fw[,g]
genedata_chr2fwS1_gene_iclip<-MasterGeneData_Chr2fw[,g]
genedata_chr3fwS1_gene_iclip<-MasterGeneData_Chr3fw[,g]
genedata_chr4fwS1_gene_iclip<-MasterGeneData_Chr4fw[,g]
genedata_chr5fwS1_gene_iclip<-MasterGeneData_Chr5fw[,g]
genedata_chr6fwS1_gene_iclip<-MasterGeneData_Chr6fw[,g]
genedata_chr7fwS1_gene_iclip<-MasterGeneData_Chr7fw[,g]
genedata_chr8fwS1_gene_iclip<-MasterGeneData_Chr8fw[,g]
genedata_chr9fwS1_gene_iclip<-MasterGeneData_Chr9fw[,g]
genedata_chr10fwS1_gene_iclip<-MasterGeneData_Chr10fw[,g]
genedata_chr11fwS1_gene_iclip<-MasterGeneData_Chr11fw[,g]
genedata_chr12fwS1_gene_iclip<-MasterGeneData_Chr12fw[,g]
genedata_chr13fwS1_gene_iclip<-MasterGeneData_Chr13fw[,g]
genedata_chr14fwS1_gene_iclip<-MasterGeneData_Chr14fw[,g]
genedata_chr15fwS1_gene_iclip<-MasterGeneData_Chr15fw[,g]
genedata_chr16fwS1_gene_iclip<-MasterGeneData_Chr16fw[,g]

#make sure the iCLIP values are numeric
genedata_chr1revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr1revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr2revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr2revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr3revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr3revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr4revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr4revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr5revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr5revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr6revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr6revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr7revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr7revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr8revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr8revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr9revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr9revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr10revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr10revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr11revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr11revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr12revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr12revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr13revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr13revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr14revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr14revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr15revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr15revS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr16revS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr16revS1_gene_iclip$Dbp2rep_iCLIP))

genedata_chr1fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr1fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr2fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr2fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr3fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr3fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr4fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr4fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr5fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr5fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr6fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr6fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr7fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr7fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr8fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr8fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr9fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr9fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr10fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr10fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr11fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr11fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr12fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr12fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr13fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr13fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr14fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr14fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr15fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr15fwS1_gene_iclip$Dbp2rep_iCLIP))
genedata_chr16fwS1_gene_iclip$Dbp2rep_iCLIP<-as.numeric(as.character(genedata_chr16fwS1_gene_iclip$Dbp2rep_iCLIP))




#calculating the sum for each gene
totalhitspergene_chr1rev_S1<-aggregate(.~gene, data=genedata_chr1revS1_gene_iclip, FUN=sum)
totalhitspergene_chr2rev_S1<-aggregate(.~gene, data=genedata_chr2revS1_gene_iclip, FUN=sum)
totalhitspergene_chr3rev_S1<-aggregate(.~gene, data=genedata_chr3revS1_gene_iclip, FUN=sum)
totalhitspergene_chr4rev_S1<-aggregate(.~gene, data=genedata_chr4revS1_gene_iclip, FUN=sum)
totalhitspergene_chr5rev_S1<-aggregate(.~gene, data=genedata_chr5revS1_gene_iclip, FUN=sum)
totalhitspergene_chr6rev_S1<-aggregate(.~gene, data=genedata_chr6revS1_gene_iclip, FUN=sum)
totalhitspergene_chr7rev_S1<-aggregate(.~gene, data=genedata_chr7revS1_gene_iclip, FUN=sum)
totalhitspergene_chr8rev_S1<-aggregate(.~gene, data=genedata_chr8revS1_gene_iclip, FUN=sum)
totalhitspergene_chr9rev_S1<-aggregate(.~gene, data=genedata_chr9revS1_gene_iclip, FUN=sum)
totalhitspergene_chr10rev_S1<-aggregate(.~gene, data=genedata_chr10revS1_gene_iclip, FUN=sum)
totalhitspergene_chr11rev_S1<-aggregate(.~gene, data=genedata_chr11revS1_gene_iclip, FUN=sum)
totalhitspergene_chr12rev_S1<-aggregate(.~gene, data=genedata_chr12revS1_gene_iclip, FUN=sum)
totalhitspergene_chr13rev_S1<-aggregate(.~gene, data=genedata_chr13revS1_gene_iclip, FUN=sum)
totalhitspergene_chr14rev_S1<-aggregate(.~gene, data=genedata_chr14revS1_gene_iclip, FUN=sum)
totalhitspergene_chr15rev_S1<-aggregate(.~gene, data=genedata_chr15revS1_gene_iclip, FUN=sum)
totalhitspergene_chr16rev_S1<-aggregate(.~gene, data=genedata_chr16revS1_gene_iclip, FUN=sum)

totalhitspergene_chr1fw_S1<-aggregate(.~gene, data=genedata_chr1fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr2fw_S1<-aggregate(.~gene, data=genedata_chr2fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr3fw_S1<-aggregate(.~gene, data=genedata_chr3fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr4fw_S1<-aggregate(.~gene, data=genedata_chr4fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr5fw_S1<-aggregate(.~gene, data=genedata_chr5fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr6fw_S1<-aggregate(.~gene, data=genedata_chr6fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr7fw_S1<-aggregate(.~gene, data=genedata_chr7fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr8fw_S1<-aggregate(.~gene, data=genedata_chr8fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr9fw_S1<-aggregate(.~gene, data=genedata_chr9fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr10fw_S1<-aggregate(.~gene, data=genedata_chr10fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr11fw_S1<-aggregate(.~gene, data=genedata_chr11fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr12fw_S1<-aggregate(.~gene, data=genedata_chr12fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr13fw_S1<-aggregate(.~gene, data=genedata_chr13fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr14fw_S1<-aggregate(.~gene, data=genedata_chr14fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr15fw_S1<-aggregate(.~gene, data=genedata_chr15fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr16fw_S1<-aggregate(.~gene, data=genedata_chr16fwS1_gene_iclip, FUN=sum)

#change colnames
colnames(totalhitspergene_chr1fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr2fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr3fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr4fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr5fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr6fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr7fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr8fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr9fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr10fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr11fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr12fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr13fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr14fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr15fw_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr16fw_S1)<- c("gene","tot_hits_D2rep")

colnames(totalhitspergene_chr1rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr2rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr3rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr4rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr5rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr6rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr7rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr8rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr9rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr10rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr11rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr12rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr13rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr14rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr15rev_S1)<- c("gene","tot_hits_D2rep")
colnames(totalhitspergene_chr16rev_S1)<- c("gene","tot_hits_D2rep")

#join genedata_ table with total hits table by gene col
MasterGeneData_chr1revS1D2rep_Norm2 <- join(MasterGeneData_chr1revS1D2rep_Norm, totalhitspergene_chr1rev_S1, by = "gene")
MasterGeneData_chr2revS1D2rep_Norm2 <- join(MasterGeneData_chr2revS1D2rep_Norm, totalhitspergene_chr2rev_S1, by = "gene")
MasterGeneData_chr3revS1D2rep_Norm2 <- join(MasterGeneData_chr3revS1D2rep_Norm, totalhitspergene_chr3rev_S1, by = "gene")
MasterGeneData_chr4revS1D2rep_Norm2 <- join(MasterGeneData_chr4revS1D2rep_Norm, totalhitspergene_chr4rev_S1, by = "gene")
MasterGeneData_chr5revS1D2rep_Norm2 <- join(MasterGeneData_chr5revS1D2rep_Norm, totalhitspergene_chr5rev_S1, by = "gene")
MasterGeneData_chr6revS1D2rep_Norm2 <- join(MasterGeneData_chr6revS1D2rep_Norm, totalhitspergene_chr6rev_S1, by = "gene")
MasterGeneData_chr7revS1D2rep_Norm2 <- join(MasterGeneData_chr7revS1D2rep_Norm, totalhitspergene_chr7rev_S1, by = "gene")
MasterGeneData_chr8revS1D2rep_Norm2 <- join(MasterGeneData_chr8revS1D2rep_Norm, totalhitspergene_chr8rev_S1, by = "gene")
MasterGeneData_chr9revS1D2rep_Norm2 <- join(MasterGeneData_chr9revS1D2rep_Norm, totalhitspergene_chr9rev_S1, by = "gene")
MasterGeneData_chr10revS1D2rep_Norm2 <- join(MasterGeneData_chr10revS1D2rep_Norm, totalhitspergene_chr10rev_S1, by = "gene")
MasterGeneData_chr11revS1D2rep_Norm2 <- join(MasterGeneData_chr11revS1D2rep_Norm, totalhitspergene_chr11rev_S1, by = "gene")
MasterGeneData_chr12revS1D2rep_Norm2 <- join(MasterGeneData_chr12revS1D2rep_Norm, totalhitspergene_chr12rev_S1, by = "gene")
MasterGeneData_chr13revS1D2rep_Norm2 <- join(MasterGeneData_chr13revS1D2rep_Norm, totalhitspergene_chr13rev_S1, by = "gene")
MasterGeneData_chr14revS1D2rep_Norm2 <- join(MasterGeneData_chr14revS1D2rep_Norm, totalhitspergene_chr14rev_S1, by = "gene")
MasterGeneData_chr15revS1D2rep_Norm2 <- join(MasterGeneData_chr15revS1D2rep_Norm, totalhitspergene_chr15rev_S1, by = "gene")
MasterGeneData_chr16revS1D2rep_Norm2 <- join(MasterGeneData_chr16revS1D2rep_Norm, totalhitspergene_chr16rev_S1, by = "gene")

MasterGeneData_chr1fwS1D2rep_Norm2 <- join(MasterGeneData_chr1fwS1D2rep_Norm, totalhitspergene_chr1fw_S1, by = "gene")
MasterGeneData_chr2fwS1D2rep_Norm2 <- join(MasterGeneData_chr2fwS1D2rep_Norm, totalhitspergene_chr2fw_S1, by = "gene")
MasterGeneData_chr3fwS1D2rep_Norm2 <- join(MasterGeneData_chr3fwS1D2rep_Norm, totalhitspergene_chr3fw_S1, by = "gene")
MasterGeneData_chr4fwS1D2rep_Norm2 <- join(MasterGeneData_chr4fwS1D2rep_Norm, totalhitspergene_chr4fw_S1, by = "gene")
MasterGeneData_chr5fwS1D2rep_Norm2 <- join(MasterGeneData_chr5fwS1D2rep_Norm, totalhitspergene_chr5fw_S1, by = "gene")
MasterGeneData_chr6fwS1D2rep_Norm2 <- join(MasterGeneData_chr6fwS1D2rep_Norm, totalhitspergene_chr6fw_S1, by = "gene")
MasterGeneData_chr7fwS1D2rep_Norm2 <- join(MasterGeneData_chr7fwS1D2rep_Norm, totalhitspergene_chr7fw_S1, by = "gene")
MasterGeneData_chr8fwS1D2rep_Norm2 <- join(MasterGeneData_chr8fwS1D2rep_Norm, totalhitspergene_chr8fw_S1, by = "gene")
MasterGeneData_chr9fwS1D2rep_Norm2 <- join(MasterGeneData_chr9fwS1D2rep_Norm, totalhitspergene_chr9fw_S1, by = "gene")
MasterGeneData_chr10fwS1D2rep_Norm2 <- join(MasterGeneData_chr10fwS1D2rep_Norm, totalhitspergene_chr10fw_S1, by = "gene")
MasterGeneData_chr11fwS1D2rep_Norm2 <- join(MasterGeneData_chr11fwS1D2rep_Norm, totalhitspergene_chr11fw_S1, by = "gene")
MasterGeneData_chr12fwS1D2rep_Norm2 <- join(MasterGeneData_chr12fwS1D2rep_Norm, totalhitspergene_chr12fw_S1, by = "gene")
MasterGeneData_chr13fwS1D2rep_Norm2 <- join(MasterGeneData_chr13fwS1D2rep_Norm, totalhitspergene_chr13fw_S1, by = "gene")
MasterGeneData_chr14fwS1D2rep_Norm2 <- join(MasterGeneData_chr14fwS1D2rep_Norm, totalhitspergene_chr14fw_S1, by = "gene")
MasterGeneData_chr15fwS1D2rep_Norm2 <- join(MasterGeneData_chr15fwS1D2rep_Norm, totalhitspergene_chr15fw_S1, by = "gene")
MasterGeneData_chr16fwS1D2rep_Norm2 <- join(MasterGeneData_chr16fwS1D2rep_Norm, totalhitspergene_chr16fw_S1, by = "gene")

###save the mastergenedata file with D2rep and S1 hits and total hits per gene for mRNA_tRNA_snoRNA
write.table(MasterGeneData_chr1revS1D2rep_Norm2, file = "MasterGeneData_chr1revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr2revS1D2rep_Norm2, file = "MasterGeneData_chr2revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr3revS1D2rep_Norm2, file = "MasterGeneData_chr3revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr4revS1D2rep_Norm2, file = "MasterGeneData_chr4revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr5revS1D2rep_Norm2, file = "MasterGeneData_chr5revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr6revS1D2rep_Norm2, file = "MasterGeneData_chr6revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr7revS1D2rep_Norm2, file = "MasterGeneData_chr7revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr8revS1D2rep_Norm2, file = "MasterGeneData_chr8revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr9revS1D2rep_Norm2, file = "MasterGeneData_chr9revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr10revS1D2rep_Norm2, file = "MasterGeneData_chr10revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr11revS1D2rep_Norm2, file = "MasterGeneData_chr11revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr12revS1D2rep_Norm2, file = "MasterGeneData_chr12revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr13revS1D2rep_Norm2, file = "MasterGeneData_chr13revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr14revS1D2rep_Norm2, file = "MasterGeneData_chr14revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr15revS1D2rep_Norm2, file = "MasterGeneData_chr15revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr16revS1D2rep_Norm2, file = "MasterGeneData_chr16revS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(MasterGeneData_chr1fwS1D2rep_Norm2, file = "MasterGeneData_chr1fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr2fwS1D2rep_Norm2, file = "MasterGeneData_chr2fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr3fwS1D2rep_Norm2, file = "MasterGeneData_chr3fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr4fwS1D2rep_Norm2, file = "MasterGeneData_chr4fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr5fwS1D2rep_Norm2, file = "MasterGeneData_chr5fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr6fwS1D2rep_Norm2, file = "MasterGeneData_chr6fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr7fwS1D2rep_Norm2, file = "MasterGeneData_chr7fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr8fwS1D2rep_Norm2, file = "MasterGeneData_chr8fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr9fwS1D2rep_Norm2, file = "MasterGeneData_chr9fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr10fwS1D2rep_Norm2, file = "MasterGeneData_chr10fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr11fwS1D2rep_Norm2, file = "MasterGeneData_chr11fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr12fwS1D2rep_Norm2, file = "MasterGeneData_chr12fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr13fwS1D2rep_Norm2, file = "MasterGeneData_chr13fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr14fwS1D2rep_Norm2, file = "MasterGeneData_chr14fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr15fwS1D2rep_Norm2, file = "MasterGeneData_chr15fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_chr16fwS1D2rep_Norm2, file = "MasterGeneData_chr16fwS1D2rep_tothits.txt", sep = "\t",row.names = F,col.names = T, quote=T)

MasterGeneData_chr1revS1D2rep_Norm<-read.delim("MasterGeneData_chr1revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr2revS1D2rep_Norm<-read.delim("MasterGeneData_chr2revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr3revS1D2rep_Norm<-read.delim("MasterGeneData_chr3revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr4revS1D2rep_Norm<-read.delim("MasterGeneData_chr4revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr5revS1D2rep_Norm<-read.delim("MasterGeneData_chr5revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr6revS1D2rep_Norm<-read.delim("MasterGeneData_chr6revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr7revS1D2rep_Norm<-read.delim("MasterGeneData_chr7revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr8revS1D2rep_Norm<-read.delim("MasterGeneData_chr8revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr9revS1D2rep_Norm<-read.delim("MasterGeneData_chr9revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr10revS1D2rep_Norm<-read.delim("MasterGeneData_chr10revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr11revS1D2rep_Norm<-read.delim("MasterGeneData_chr11revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr12revS1D2rep_Norm<-read.delim("MasterGeneData_chr12revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr13revS1D2rep_Norm<-read.delim("MasterGeneData_chr13revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr14revS1D2rep_Norm<-read.delim("MasterGeneData_chr14revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr15revS1D2rep_Norm<-read.delim("MasterGeneData_chr15revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr16revS1D2rep_Norm<-read.delim("MasterGeneData_chr16revS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

MasterGeneData_chr1fwS1D2rep_Norm<-read.delim("MasterGeneData_chr1fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr2fwS1D2rep_Norm<-read.delim("MasterGeneData_chr2fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr3fwS1D2rep_Norm<-read.delim("MasterGeneData_chr3fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr4fwS1D2rep_Norm<-read.delim("MasterGeneData_chr4fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr5fwS1D2rep_Norm<-read.delim("MasterGeneData_chr5fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr6fwS1D2rep_Norm<-read.delim("MasterGeneData_chr6fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr7fwS1D2rep_Norm<-read.delim("MasterGeneData_chr7fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr8fwS1D2rep_Norm<-read.delim("MasterGeneData_chr8fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr9fwS1D2rep_Norm<-read.delim("MasterGeneData_chr9fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr10fwS1D2rep_Norm<-read.delim("MasterGeneData_chr10fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr11fwS1D2rep_Norm<-read.delim("MasterGeneData_chr11fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr12fwS1D2rep_Norm<-read.delim("MasterGeneData_chr12fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr13fwS1D2rep_Norm<-read.delim("MasterGeneData_chr13fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr14fwS1D2rep_Norm<-read.delim("MasterGeneData_chr14fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr15fwS1D2rep_Norm<-read.delim("MasterGeneData_chr15fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
MasterGeneData_chr16fwS1D2rep_Norm<-read.delim("MasterGeneData_chr16fwS1D2rep_tothits.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)



#calculating the normalized values
MasterGeneData_chr1revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr1revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr1revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr2revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr2revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr2revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr3revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr3revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr3revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr4revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr4revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr4revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr5revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr5revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr5revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr6revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr6revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr6revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr7revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr7revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr7revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr8revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr8revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr8revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr9revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr9revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr9revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr10revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr10revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr10revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr11revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr11revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr11revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr12revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr12revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr12revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr13revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr13revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr13revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr14revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr14revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr14revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr15revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr15revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr15revS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr16revS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr16revS1D2rep_Norm$Sen1_clip / MasterGeneData_chr16revS1D2rep_Norm$tot_hits_Sen1

MasterGeneData_chr1fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr1fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr1fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr2fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr2fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr2fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr3fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr3fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr3fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr4fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr4fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr4fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr5fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr5fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr5fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr6fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr6fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr6fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr7fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr7fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr7fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr8fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr8fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr8fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr9fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr9fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr9fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr10fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr10fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr10fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr11fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr11fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr11fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr12fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr12fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr12fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr13fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr13fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr13fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr14fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr14fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr14fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr15fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr15fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr15fwS1D2rep_Norm$tot_hits_Sen1
MasterGeneData_chr16fwS1D2rep_Norm$Sen1_clipnorm <- MasterGeneData_chr16fwS1D2rep_Norm$Sen1_clip / MasterGeneData_chr16fwS1D2rep_Norm$tot_hits_Sen1

MasterGeneData_chr1revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr1revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr1revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr2revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr2revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr2revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr3revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr3revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr3revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr4revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr4revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr4revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr5revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr5revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr5revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr6revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr6revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr6revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr7revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr7revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr7revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr8revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr8revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr8revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr9revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr9revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr9revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr10revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr10revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr10revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr11revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr11revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr11revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr12revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr12revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr12revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr13revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr13revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr13revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr14revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr14revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr14revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr15revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr15revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr15revS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr16revS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr16revS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr16revS1D2rep_Norm$tot_hits_D2rep

MasterGeneData_chr1fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr1fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr1fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr2fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr2fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr2fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr3fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr3fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr3fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr4fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr4fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr4fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr5fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr5fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr5fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr6fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr6fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr6fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr7fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr7fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr7fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr8fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr8fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr8fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr9fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr9fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr9fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr10fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr10fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr10fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr11fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr11fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr11fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr12fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr12fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr12fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr13fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr13fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr13fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr14fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr14fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr14fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr15fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr15fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr15fwS1D2rep_Norm$tot_hits_D2rep
MasterGeneData_chr16fwS1D2rep_Norm$Dbp2rep_iCLIPnorm <- MasterGeneData_chr16fwS1D2rep_Norm$Dbp2rep_iCLIP / MasterGeneData_chr16fwS1D2rep_Norm$tot_hits_D2rep




q<-c(1:4,7,9:15)
MasterGeneData_S1D2rep_chr1r_Norm <-MasterGeneData_chr1revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr2r_Norm <-MasterGeneData_chr2revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr3r_Norm <-MasterGeneData_chr3revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr4r_Norm <-MasterGeneData_chr4revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr5r_Norm <-MasterGeneData_chr5revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr6r_Norm <-MasterGeneData_chr6revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr7r_Norm <-MasterGeneData_chr7revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr8r_Norm <-MasterGeneData_chr8revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr9r_Norm <-MasterGeneData_chr9revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr10r_Norm <-MasterGeneData_chr10revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr11r_Norm <-MasterGeneData_chr11revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr12r_Norm <-MasterGeneData_chr12revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr13r_Norm <-MasterGeneData_chr13revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr14r_Norm <-MasterGeneData_chr14revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr15r_Norm <-MasterGeneData_chr15revS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr16r_Norm <-MasterGeneData_chr16revS1D2rep_Norm[,q]

MasterGeneData_S1D2rep_chr1f_Norm <-MasterGeneData_chr1fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr2f_Norm <-MasterGeneData_chr2fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr3f_Norm <-MasterGeneData_chr3fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr4f_Norm <-MasterGeneData_chr4fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr5f_Norm <-MasterGeneData_chr5fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr6f_Norm <-MasterGeneData_chr6fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr7f_Norm <-MasterGeneData_chr7fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr8f_Norm <-MasterGeneData_chr8fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr9f_Norm <-MasterGeneData_chr9fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr10f_Norm <-MasterGeneData_chr10fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr11f_Norm <-MasterGeneData_chr11fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr12f_Norm <-MasterGeneData_chr12fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr13f_Norm <-MasterGeneData_chr13fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr14f_Norm <-MasterGeneData_chr14fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr15f_Norm <-MasterGeneData_chr15fwS1D2rep_Norm[,q]
MasterGeneData_S1D2rep_chr16f_Norm <-MasterGeneData_chr16fwS1D2rep_Norm[,q]


#norm data write final
write.table(MasterGeneData_S1D2rep_chr1r_Norm, file = "MasterGeneData_S1D2rep_chr1r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr2r_Norm, file = "MasterGeneData_S1D2rep_chr2r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr3r_Norm, file = "MasterGeneData_S1D2rep_chr3r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr4r_Norm, file = "MasterGeneData_S1D2rep_chr4r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr5r_Norm, file = "MasterGeneData_S1D2rep_chr5r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr6r_Norm, file = "MasterGeneData_S1D2rep_chr6r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr7r_Norm, file = "MasterGeneData_S1D2rep_chr7r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr8r_Norm, file = "MasterGeneData_S1D2rep_chr8r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr9r_Norm, file = "MasterGeneData_S1D2rep_chr9r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr10r_Norm, file = "MasterGeneData_S1D2rep_chr10r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr11r_Norm, file = "MasterGeneData_S1D2rep_chr11r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr12r_Norm, file = "MasterGeneData_S1D2rep_chr12r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr13r_Norm, file = "MasterGeneData_S1D2rep_chr13r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr14r_Norm, file = "MasterGeneData_S1D2rep_chr14r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr15r_Norm, file = "MasterGeneData_S1D2rep_chr15r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr16r_Norm, file = "MasterGeneData_S1D2rep_chr16r_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(MasterGeneData_S1D2rep_chr1f_Norm, file = "MasterGeneData_S1D2rep_chr1f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr2f_Norm, file = "MasterGeneData_S1D2rep_chr2f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr3f_Norm, file = "MasterGeneData_S1D2rep_chr3f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr4f_Norm, file = "MasterGeneData_S1D2rep_chr4f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr5f_Norm, file = "MasterGeneData_S1D2rep_chr5f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr6f_Norm, file = "MasterGeneData_S1D2rep_chr6f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr7f_Norm, file = "MasterGeneData_S1D2rep_chr7f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr8f_Norm, file = "MasterGeneData_S1D2rep_chr8f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr9f_Norm, file = "MasterGeneData_S1D2rep_chr9f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr10f_Norm, file = "MasterGeneData_S1D2rep_chr10f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr11f_Norm, file = "MasterGeneData_S1D2rep_chr11f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr12f_Norm, file = "MasterGeneData_S1D2rep_chr12f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr13f_Norm, file = "MasterGeneData_S1D2rep_chr13f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr14f_Norm, file = "MasterGeneData_S1D2rep_chr14f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr15f_Norm, file = "MasterGeneData_S1D2rep_chr15f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(MasterGeneData_S1D2rep_chr16f_Norm, file = "MasterGeneData_S1D2rep_chr16f_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)







##################################################################
####### End tRNA addition, time to normalize the Dbp2 data #######


#get rid of unassigned

snRNA_CD_atedgenedata_chr1fw <- genedata_chr1fw_snRNA_CD[ which(genedata_chr1fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr2fw <- genedata_chr2fw_snRNA_CD[ which(genedata_chr2fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr3fw <- genedata_chr3fw_snRNA_CD[ which(genedata_chr3fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr4fw <- genedata_chr4fw_snRNA_CD[ which(genedata_chr4fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr5fw <- genedata_chr5fw_snRNA_CD[ which(genedata_chr5fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr6fw <- genedata_chr6fw_snRNA_CD[ which(genedata_chr6fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr7fw <- genedata_chr7fw_snRNA_CD[ which(genedata_chr7fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr8fw <- genedata_chr8fw_snRNA_CD[ which(genedata_chr8fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr9fw <- genedata_chr9fw_snRNA_CD[ which(genedata_chr9fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr10fw <- genedata_chr10fw_snRNA_CD[ which(genedata_chr10fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr11fw <- genedata_chr11fw_snRNA_CD[ which(genedata_chr11fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr12fw <- genedata_chr12fw_snRNA_CD[ which(genedata_chr12fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr13fw <- genedata_chr13fw_snRNA_CD[ which(genedata_chr13fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr14fw <- genedata_chr14fw_snRNA_CD[ which(genedata_chr14fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr15fw <- genedata_chr15fw_snRNA_CD[ which(genedata_chr15fw_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr16fw <- genedata_chr16fw_snRNA_CD[ which(genedata_chr16fw_snRNA_CD$feature!="unassigned"),]

snRNA_CD_atedgenedata_chr1rev <- genedata_chr1rev_snRNA_CD[ which(genedata_chr1rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr2rev <- genedata_chr2rev_snRNA_CD[ which(genedata_chr2rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr3rev <- genedata_chr3rev_snRNA_CD[ which(genedata_chr3rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr4rev <- genedata_chr4rev_snRNA_CD[ which(genedata_chr4rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr5rev <- genedata_chr5rev_snRNA_CD[ which(genedata_chr5rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr6rev <- genedata_chr6rev_snRNA_CD[ which(genedata_chr6rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr7rev <- genedata_chr7rev_snRNA_CD[ which(genedata_chr7rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr8rev <- genedata_chr8rev_snRNA_CD[ which(genedata_chr8rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr9rev <- genedata_chr9rev_snRNA_CD[ which(genedata_chr9rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr10rev <- genedata_chr10rev_snRNA_CD[ which(genedata_chr10rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr11rev <- genedata_chr11rev_snRNA_CD[ which(genedata_chr11rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr12rev <- genedata_chr12rev_snRNA_CD[ which(genedata_chr12rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr13rev <- genedata_chr13rev_snRNA_CD[ which(genedata_chr13rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr14rev <- genedata_chr14rev_snRNA_CD[ which(genedata_chr14rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr15rev <- genedata_chr15rev_snRNA_CD[ which(genedata_chr15rev_snRNA_CD$feature!="unassigned"),]
snRNA_CD_atedgenedata_chr16rev <- genedata_chr16rev_snRNA_CD[ which(genedata_chr16rev_snRNA_CD$feature!="unassigned"),]

#sort by pos
snRNA_CD_genedata_chr1fw_sort <- snRNA_CD_atedgenedata_chr1fw[order(snRNA_CD_atedgenedata_chr1fw$pos),]
snRNA_CD_genedata_chr2fw_sort <- snRNA_CD_atedgenedata_chr2fw[order(snRNA_CD_atedgenedata_chr2fw$pos),]
snRNA_CD_genedata_chr3fw_sort <- snRNA_CD_atedgenedata_chr3fw[order(snRNA_CD_atedgenedata_chr3fw$pos),]
snRNA_CD_genedata_chr4fw_sort <- snRNA_CD_atedgenedata_chr4fw[order(snRNA_CD_atedgenedata_chr4fw$pos),]
snRNA_CD_genedata_chr5fw_sort <- snRNA_CD_atedgenedata_chr5fw[order(snRNA_CD_atedgenedata_chr5fw$pos),]
snRNA_CD_genedata_chr6fw_sort <- snRNA_CD_atedgenedata_chr6fw[order(snRNA_CD_atedgenedata_chr6fw$pos),]
snRNA_CD_genedata_chr7fw_sort <- snRNA_CD_atedgenedata_chr7fw[order(snRNA_CD_atedgenedata_chr7fw$pos),]
snRNA_CD_genedata_chr8fw_sort <- snRNA_CD_atedgenedata_chr8fw[order(snRNA_CD_atedgenedata_chr8fw$pos),]
snRNA_CD_genedata_chr9fw_sort <- snRNA_CD_atedgenedata_chr9fw[order(snRNA_CD_atedgenedata_chr9fw$pos),]
snRNA_CD_genedata_chr10fw_sort <- snRNA_CD_atedgenedata_chr10fw[order(snRNA_CD_atedgenedata_chr10fw$pos),]
snRNA_CD_genedata_chr11fw_sort <- snRNA_CD_atedgenedata_chr11fw[order(snRNA_CD_atedgenedata_chr11fw$pos),]
snRNA_CD_genedata_chr12fw_sort <- snRNA_CD_atedgenedata_chr12fw[order(snRNA_CD_atedgenedata_chr12fw$pos),]
snRNA_CD_genedata_chr13fw_sort <- snRNA_CD_atedgenedata_chr13fw[order(snRNA_CD_atedgenedata_chr13fw$pos),]
snRNA_CD_genedata_chr14fw_sort <- snRNA_CD_atedgenedata_chr14fw[order(snRNA_CD_atedgenedata_chr14fw$pos),]
snRNA_CD_genedata_chr15fw_sort <- snRNA_CD_atedgenedata_chr15fw[order(snRNA_CD_atedgenedata_chr15fw$pos),]
snRNA_CD_genedata_chr16fw_sort <- snRNA_CD_atedgenedata_chr16fw[order(snRNA_CD_atedgenedata_chr16fw$pos),]

snRNA_CD_genedata_chr1rev_sort <- snRNA_CD_atedgenedata_chr1rev[order(snRNA_CD_atedgenedata_chr1rev$pos),]
snRNA_CD_genedata_chr2rev_sort <- snRNA_CD_atedgenedata_chr2rev[order(snRNA_CD_atedgenedata_chr2rev$pos),]
snRNA_CD_genedata_chr3rev_sort <- snRNA_CD_atedgenedata_chr3rev[order(snRNA_CD_atedgenedata_chr3rev$pos),]
snRNA_CD_genedata_chr4rev_sort <- snRNA_CD_atedgenedata_chr4rev[order(snRNA_CD_atedgenedata_chr4rev$pos),]
snRNA_CD_genedata_chr5rev_sort <- snRNA_CD_atedgenedata_chr5rev[order(snRNA_CD_atedgenedata_chr5rev$pos),]
snRNA_CD_genedata_chr6rev_sort <- snRNA_CD_atedgenedata_chr6rev[order(snRNA_CD_atedgenedata_chr6rev$pos),]
snRNA_CD_genedata_chr7rev_sort <- snRNA_CD_atedgenedata_chr7rev[order(snRNA_CD_atedgenedata_chr7rev$pos),]
snRNA_CD_genedata_chr8rev_sort <- snRNA_CD_atedgenedata_chr8rev[order(snRNA_CD_atedgenedata_chr8rev$pos),]
snRNA_CD_genedata_chr9rev_sort <- snRNA_CD_atedgenedata_chr9rev[order(snRNA_CD_atedgenedata_chr9rev$pos),]
snRNA_CD_genedata_chr10rev_sort <- snRNA_CD_atedgenedata_chr10rev[order(snRNA_CD_atedgenedata_chr10rev$pos),]
snRNA_CD_genedata_chr11rev_sort <- snRNA_CD_atedgenedata_chr11rev[order(snRNA_CD_atedgenedata_chr11rev$pos),]
snRNA_CD_genedata_chr12rev_sort <- snRNA_CD_atedgenedata_chr12rev[order(snRNA_CD_atedgenedata_chr12rev$pos),]
snRNA_CD_genedata_chr13rev_sort <- snRNA_CD_atedgenedata_chr13rev[order(snRNA_CD_atedgenedata_chr13rev$pos),]
snRNA_CD_genedata_chr14rev_sort <- snRNA_CD_atedgenedata_chr14rev[order(snRNA_CD_atedgenedata_chr14rev$pos),]
snRNA_CD_genedata_chr15rev_sort <- snRNA_CD_atedgenedata_chr15rev[order(snRNA_CD_atedgenedata_chr15rev$pos),]
snRNA_CD_genedata_chr16rev_sort <- snRNA_CD_atedgenedata_chr16rev[order(snRNA_CD_atedgenedata_chr16rev$pos),]

#this is a genedata table that has mRNA and snoRNA C/D and also H/ACA box also it has dbp2 and sen1 clip data. 
genedata_chr1fw_S1<- join(snRNA_CD_genedata_chr1fw_sort,Sen1_genedata_chr1fw_end, by="pos")
genedata_chr2fw_S1<- join(snRNA_CD_genedata_chr2fw_sort,Sen1_genedata_chr2fw_end, by="pos")
genedata_chr3fw_S1<- join(snRNA_CD_genedata_chr3fw_sort,Sen1_genedata_chr3fw_end, by="pos")
genedata_chr4fw_S1<- join(snRNA_CD_genedata_chr4fw_sort,Sen1_genedata_chr4fw_end, by="pos")
genedata_chr5fw_S1<- join(snRNA_CD_genedata_chr5fw_sort,Sen1_genedata_chr5fw_end, by="pos")
genedata_chr6fw_S1<- join(snRNA_CD_genedata_chr6fw_sort,Sen1_genedata_chr6fw_end, by="pos")
genedata_chr7fw_S1<- join(snRNA_CD_genedata_chr7fw_sort,Sen1_genedata_chr7fw_end, by="pos")
genedata_chr8fw_S1<- join(snRNA_CD_genedata_chr8fw_sort,Sen1_genedata_chr8fw_end, by="pos")
genedata_chr9fw_S1<- join(snRNA_CD_genedata_chr9fw_sort,Sen1_genedata_chr9fw_end, by="pos")
genedata_chr10fw_S1<- join(snRNA_CD_genedata_chr10fw_sort,Sen1_genedata_chr10fw_end, by="pos")
genedata_chr11fw_S1<- join(snRNA_CD_genedata_chr11fw_sort,Sen1_genedata_chr11fw_end, by="pos")
genedata_chr12fw_S1<- join(snRNA_CD_genedata_chr12fw_sort,Sen1_genedata_chr12fw_end, by="pos")
genedata_chr13fw_S1<- join(snRNA_CD_genedata_chr13fw_sort,Sen1_genedata_chr13fw_end, by="pos")
genedata_chr14fw_S1<- join(snRNA_CD_genedata_chr14fw_sort,Sen1_genedata_chr14fw_end, by="pos")
genedata_chr15fw_S1<- join(snRNA_CD_genedata_chr15fw_sort,Sen1_genedata_chr15fw_end, by="pos")
genedata_chr16fw_S1<- join(snRNA_CD_genedata_chr16fw_sort,Sen1_genedata_chr16fw_end, by="pos")

genedata_chr1rev_S1<- join(snRNA_CD_genedata_chr1rev_sort,Sen1_genedata_chr1rev_end, by="pos")
genedata_chr2rev_S1<- join(snRNA_CD_genedata_chr2rev_sort,Sen1_genedata_chr2rev_end, by="pos")
genedata_chr3rev_S1<- join(snRNA_CD_genedata_chr3rev_sort,Sen1_genedata_chr3rev_end, by="pos")
genedata_chr4rev_S1<- join(snRNA_CD_genedata_chr4rev_sort,Sen1_genedata_chr4rev_end, by="pos")
genedata_chr5rev_S1<- join(snRNA_CD_genedata_chr5rev_sort,Sen1_genedata_chr5rev_end, by="pos")
genedata_chr6rev_S1<- join(snRNA_CD_genedata_chr6rev_sort,Sen1_genedata_chr6rev_end, by="pos")
genedata_chr7rev_S1<- join(snRNA_CD_genedata_chr7rev_sort,Sen1_genedata_chr7rev_end, by="pos")
genedata_chr8rev_S1<- join(snRNA_CD_genedata_chr8rev_sort,Sen1_genedata_chr8rev_end, by="pos")
genedata_chr9rev_S1<- join(snRNA_CD_genedata_chr9rev_sort,Sen1_genedata_chr9rev_end, by="pos")
genedata_chr10rev_S1<- join(snRNA_CD_genedata_chr10rev_sort,Sen1_genedata_chr10rev_end, by="pos")
genedata_chr11rev_S1<- join(snRNA_CD_genedata_chr11rev_sort,Sen1_genedata_chr11rev_end, by="pos")
genedata_chr12rev_S1<- join(snRNA_CD_genedata_chr12rev_sort,Sen1_genedata_chr12rev_end, by="pos")
genedata_chr13rev_S1<- join(snRNA_CD_genedata_chr13rev_sort,Sen1_genedata_chr13rev_end, by="pos")
genedata_chr14rev_S1<- join(snRNA_CD_genedata_chr14rev_sort,Sen1_genedata_chr14rev_end, by="pos")
genedata_chr15rev_S1<- join(snRNA_CD_genedata_chr15rev_sort,Sen1_genedata_chr15rev_end, by="pos")
genedata_chr16rev_S1<- join(snRNA_CD_genedata_chr16rev_sort,Sen1_genedata_chr16rev_end, by="pos")

########### Normalize Sen1 data ###############
#sum up per gene

#Keep only the iCLIP data and gene col
g <- c(5,13)
genedata_chr1revS1_gene_iclip<-genedata_chr1rev_S1[,g]
genedata_chr2revS1_gene_iclip<-genedata_chr2rev_S1[,g]
genedata_chr3revS1_gene_iclip<-genedata_chr3rev_S1[,g]
genedata_chr4revS1_gene_iclip<-genedata_chr4rev_S1[,g]
genedata_chr5revS1_gene_iclip<-genedata_chr5rev_S1[,g]
genedata_chr6revS1_gene_iclip<-genedata_chr6rev_S1[,g]
genedata_chr7revS1_gene_iclip<-genedata_chr7rev_S1[,g]
genedata_chr8revS1_gene_iclip<-genedata_chr8rev_S1[,g]
genedata_chr9revS1_gene_iclip<-genedata_chr9rev_S1[,g]
genedata_chr10revS1_gene_iclip<-genedata_chr10rev_S1[,g]
genedata_chr11revS1_gene_iclip<-genedata_chr11rev_S1[,g]
genedata_chr12revS1_gene_iclip<-genedata_chr12rev_S1[,g]
genedata_chr13revS1_gene_iclip<-genedata_chr13rev_S1[,g]
genedata_chr14revS1_gene_iclip<-genedata_chr14rev_S1[,g]
genedata_chr15revS1_gene_iclip<-genedata_chr15rev_S1[,g]
genedata_chr16revS1_gene_iclip<-genedata_chr16rev_S1[,g]

genedata_chr1fwS1_gene_iclip<-genedata_chr1fw_S1[,g]
genedata_chr2fwS1_gene_iclip<-genedata_chr2fw_S1[,g]
genedata_chr3fwS1_gene_iclip<-genedata_chr3fw_S1[,g]
genedata_chr4fwS1_gene_iclip<-genedata_chr4fw_S1[,g]
genedata_chr5fwS1_gene_iclip<-genedata_chr5fw_S1[,g]
genedata_chr6fwS1_gene_iclip<-genedata_chr6fw_S1[,g]
genedata_chr7fwS1_gene_iclip<-genedata_chr7fw_S1[,g]
genedata_chr8fwS1_gene_iclip<-genedata_chr8fw_S1[,g]
genedata_chr9fwS1_gene_iclip<-genedata_chr9fw_S1[,g]
genedata_chr10fwS1_gene_iclip<-genedata_chr10fw_S1[,g]
genedata_chr11fwS1_gene_iclip<-genedata_chr11fw_S1[,g]
genedata_chr12fwS1_gene_iclip<-genedata_chr12fw_S1[,g]
genedata_chr13fwS1_gene_iclip<-genedata_chr13fw_S1[,g]
genedata_chr14fwS1_gene_iclip<-genedata_chr14fw_S1[,g]
genedata_chr15fwS1_gene_iclip<-genedata_chr15fw_S1[,g]
genedata_chr16fwS1_gene_iclip<-genedata_chr16fw_S1[,g]

#make sure the iCLIP values are numeric
genedata_chr1revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr1revS1_gene_iclip$Sen1_clip))
genedata_chr2revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr2revS1_gene_iclip$Sen1_clip))
genedata_chr3revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr3revS1_gene_iclip$Sen1_clip))
genedata_chr4revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr4revS1_gene_iclip$Sen1_clip))
genedata_chr5revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr5revS1_gene_iclip$Sen1_clip))
genedata_chr6revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr6revS1_gene_iclip$Sen1_clip))
genedata_chr7revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr7revS1_gene_iclip$Sen1_clip))
genedata_chr8revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr8revS1_gene_iclip$Sen1_clip))
genedata_chr9revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr9revS1_gene_iclip$Sen1_clip))
genedata_chr10revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr10revS1_gene_iclip$Sen1_clip))
genedata_chr11revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr11revS1_gene_iclip$Sen1_clip))
genedata_chr12revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr12revS1_gene_iclip$Sen1_clip))
genedata_chr13revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr13revS1_gene_iclip$Sen1_clip))
genedata_chr14revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr14revS1_gene_iclip$Sen1_clip))
genedata_chr15revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr15revS1_gene_iclip$Sen1_clip))
genedata_chr16revS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr16revS1_gene_iclip$Sen1_clip))

genedata_chr1fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr1fwS1_gene_iclip$Sen1_clip))
genedata_chr2fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr2fwS1_gene_iclip$Sen1_clip))
genedata_chr3fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr3fwS1_gene_iclip$Sen1_clip))
genedata_chr4fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr4fwS1_gene_iclip$Sen1_clip))
genedata_chr5fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr5fwS1_gene_iclip$Sen1_clip))
genedata_chr6fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr6fwS1_gene_iclip$Sen1_clip))
genedata_chr7fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr7fwS1_gene_iclip$Sen1_clip))
genedata_chr8fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr8fwS1_gene_iclip$Sen1_clip))
genedata_chr9fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr9fwS1_gene_iclip$Sen1_clip))
genedata_chr10fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr10fwS1_gene_iclip$Sen1_clip))
genedata_chr11fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr11fwS1_gene_iclip$Sen1_clip))
genedata_chr12fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr12fwS1_gene_iclip$Sen1_clip))
genedata_chr13fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr13fwS1_gene_iclip$Sen1_clip))
genedata_chr14fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr14fwS1_gene_iclip$Sen1_clip))
genedata_chr15fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr15fwS1_gene_iclip$Sen1_clip))
genedata_chr16fwS1_gene_iclip$Sen1_clip<-as.numeric(as.character(genedata_chr16fwS1_gene_iclip$Sen1_clip))




#calculating the sum for each gene
totalhitspergene_chr1rev_S1<-aggregate(.~gene, data=genedata_chr1revS1_gene_iclip, FUN=sum)
totalhitspergene_chr2rev_S1<-aggregate(.~gene, data=genedata_chr2revS1_gene_iclip, FUN=sum)
totalhitspergene_chr3rev_S1<-aggregate(.~gene, data=genedata_chr3revS1_gene_iclip, FUN=sum)
totalhitspergene_chr4rev_S1<-aggregate(.~gene, data=genedata_chr4revS1_gene_iclip, FUN=sum)
totalhitspergene_chr5rev_S1<-aggregate(.~gene, data=genedata_chr5revS1_gene_iclip, FUN=sum)
totalhitspergene_chr6rev_S1<-aggregate(.~gene, data=genedata_chr6revS1_gene_iclip, FUN=sum)
totalhitspergene_chr7rev_S1<-aggregate(.~gene, data=genedata_chr7revS1_gene_iclip, FUN=sum)
totalhitspergene_chr8rev_S1<-aggregate(.~gene, data=genedata_chr8revS1_gene_iclip, FUN=sum)
totalhitspergene_chr9rev_S1<-aggregate(.~gene, data=genedata_chr9revS1_gene_iclip, FUN=sum)
totalhitspergene_chr10rev_S1<-aggregate(.~gene, data=genedata_chr10revS1_gene_iclip, FUN=sum)
totalhitspergene_chr11rev_S1<-aggregate(.~gene, data=genedata_chr11revS1_gene_iclip, FUN=sum)
totalhitspergene_chr12rev_S1<-aggregate(.~gene, data=genedata_chr12revS1_gene_iclip, FUN=sum)
totalhitspergene_chr13rev_S1<-aggregate(.~gene, data=genedata_chr13revS1_gene_iclip, FUN=sum)
totalhitspergene_chr14rev_S1<-aggregate(.~gene, data=genedata_chr14revS1_gene_iclip, FUN=sum)
totalhitspergene_chr15rev_S1<-aggregate(.~gene, data=genedata_chr15revS1_gene_iclip, FUN=sum)
totalhitspergene_chr16rev_S1<-aggregate(.~gene, data=genedata_chr16revS1_gene_iclip, FUN=sum)

totalhitspergene_chr1fw_S1<-aggregate(.~gene, data=genedata_chr1fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr2fw_S1<-aggregate(.~gene, data=genedata_chr2fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr3fw_S1<-aggregate(.~gene, data=genedata_chr3fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr4fw_S1<-aggregate(.~gene, data=genedata_chr4fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr5fw_S1<-aggregate(.~gene, data=genedata_chr5fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr6fw_S1<-aggregate(.~gene, data=genedata_chr6fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr7fw_S1<-aggregate(.~gene, data=genedata_chr7fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr8fw_S1<-aggregate(.~gene, data=genedata_chr8fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr9fw_S1<-aggregate(.~gene, data=genedata_chr9fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr10fw_S1<-aggregate(.~gene, data=genedata_chr10fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr11fw_S1<-aggregate(.~gene, data=genedata_chr11fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr12fw_S1<-aggregate(.~gene, data=genedata_chr12fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr13fw_S1<-aggregate(.~gene, data=genedata_chr13fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr14fw_S1<-aggregate(.~gene, data=genedata_chr14fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr15fw_S1<-aggregate(.~gene, data=genedata_chr15fwS1_gene_iclip, FUN=sum)
totalhitspergene_chr16fw_S1<-aggregate(.~gene, data=genedata_chr16fwS1_gene_iclip, FUN=sum)

#change colnames
colnames(totalhitspergene_chr1fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr2fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr3fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr4fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr5fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr6fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr7fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr8fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr9fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr10fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr11fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr12fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr13fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr14fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr15fw_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr16fw_S1)<- c("gene","tot_hits_s1")

colnames(totalhitspergene_chr1rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr2rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr3rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr4rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr5rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr6rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr7rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr8rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr9rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr10rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr11rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr12rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr13rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr14rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr15rev_S1)<- c("gene","tot_hits_s1")
colnames(totalhitspergene_chr16rev_S1)<- c("gene","tot_hits_s1")

#join genedata_ table with total hits table by gene col
genedata_chr1revS1_Norm <- join(genedata_chr1rev_S1, totalhitspergene_chr1rev_S1, by = "gene")
genedata_chr2revS1_Norm <- join(genedata_chr2rev_S1, totalhitspergene_chr2rev_S1, by = "gene")
genedata_chr3revS1_Norm <- join(genedata_chr3rev_S1, totalhitspergene_chr3rev_S1, by = "gene")
genedata_chr4revS1_Norm <- join(genedata_chr4rev_S1, totalhitspergene_chr4rev_S1, by = "gene")
genedata_chr5revS1_Norm <- join(genedata_chr5rev_S1, totalhitspergene_chr5rev_S1, by = "gene")
genedata_chr6revS1_Norm <- join(genedata_chr6rev_S1, totalhitspergene_chr6rev_S1, by = "gene")
genedata_chr7revS1_Norm <- join(genedata_chr7rev_S1, totalhitspergene_chr7rev_S1, by = "gene")
genedata_chr8revS1_Norm <- join(genedata_chr8rev_S1, totalhitspergene_chr8rev_S1, by = "gene")
genedata_chr9revS1_Norm <- join(genedata_chr9rev_S1, totalhitspergene_chr9rev_S1, by = "gene")
genedata_chr10revS1_Norm <- join(genedata_chr10rev_S1, totalhitspergene_chr10rev_S1, by = "gene")
genedata_chr11revS1_Norm <- join(genedata_chr11rev_S1, totalhitspergene_chr11rev_S1, by = "gene")
genedata_chr12revS1_Norm <- join(genedata_chr12rev_S1, totalhitspergene_chr12rev_S1, by = "gene")
genedata_chr13revS1_Norm <- join(genedata_chr13rev_S1, totalhitspergene_chr13rev_S1, by = "gene")
genedata_chr14revS1_Norm <- join(genedata_chr14rev_S1, totalhitspergene_chr14rev_S1, by = "gene")
genedata_chr15revS1_Norm <- join(genedata_chr15rev_S1, totalhitspergene_chr15rev_S1, by = "gene")
genedata_chr16revS1_Norm <- join(genedata_chr16rev_S1, totalhitspergene_chr16rev_S1, by = "gene")

genedata_chr1fwS1_Norm <- join(genedata_chr1fw_S1, totalhitspergene_chr1fw_S1, by = "gene")
genedata_chr2fwS1_Norm <- join(genedata_chr2fw_S1, totalhitspergene_chr2fw_S1, by = "gene")
genedata_chr3fwS1_Norm <- join(genedata_chr3fw_S1, totalhitspergene_chr3fw_S1, by = "gene")
genedata_chr4fwS1_Norm <- join(genedata_chr4fw_S1, totalhitspergene_chr4fw_S1, by = "gene")
genedata_chr5fwS1_Norm <- join(genedata_chr5fw_S1, totalhitspergene_chr5fw_S1, by = "gene")
genedata_chr6fwS1_Norm <- join(genedata_chr6fw_S1, totalhitspergene_chr6fw_S1, by = "gene")
genedata_chr7fwS1_Norm <- join(genedata_chr7fw_S1, totalhitspergene_chr7fw_S1, by = "gene")
genedata_chr8fwS1_Norm <- join(genedata_chr8fw_S1, totalhitspergene_chr8fw_S1, by = "gene")
genedata_chr9fwS1_Norm <- join(genedata_chr9fw_S1, totalhitspergene_chr9fw_S1, by = "gene")
genedata_chr10fwS1_Norm <- join(genedata_chr10fw_S1, totalhitspergene_chr10fw_S1, by = "gene")
genedata_chr11fwS1_Norm <- join(genedata_chr11fw_S1, totalhitspergene_chr11fw_S1, by = "gene")
genedata_chr12fwS1_Norm <- join(genedata_chr12fw_S1, totalhitspergene_chr12fw_S1, by = "gene")
genedata_chr13fwS1_Norm <- join(genedata_chr13fw_S1, totalhitspergene_chr13fw_S1, by = "gene")
genedata_chr14fwS1_Norm <- join(genedata_chr14fw_S1, totalhitspergene_chr14fw_S1, by = "gene")
genedata_chr15fwS1_Norm <- join(genedata_chr15fw_S1, totalhitspergene_chr15fw_S1, by = "gene")
genedata_chr16fwS1_Norm <- join(genedata_chr16fw_S1, totalhitspergene_chr16fw_S1, by = "gene")

#calculating the normalized values
genedata_chr1revS1_Norm$Sen1_clipnorm <- genedata_chr1revS1_Norm$Sen1_clip / genedata_chr1revS1_Norm$tot_hits_s1
genedata_chr2revS1_Norm$Sen1_clipnorm <- genedata_chr2revS1_Norm$Sen1_clip / genedata_chr2revS1_Norm$tot_hits_s1
genedata_chr3revS1_Norm$Sen1_clipnorm <- genedata_chr3revS1_Norm$Sen1_clip / genedata_chr3revS1_Norm$tot_hits_s1
genedata_chr4revS1_Norm$Sen1_clipnorm <- genedata_chr4revS1_Norm$Sen1_clip / genedata_chr4revS1_Norm$tot_hits_s1
genedata_chr5revS1_Norm$Sen1_clipnorm <- genedata_chr5revS1_Norm$Sen1_clip / genedata_chr5revS1_Norm$tot_hits_s1
genedata_chr6revS1_Norm$Sen1_clipnorm <- genedata_chr6revS1_Norm$Sen1_clip / genedata_chr6revS1_Norm$tot_hits_s1
genedata_chr7revS1_Norm$Sen1_clipnorm <- genedata_chr7revS1_Norm$Sen1_clip / genedata_chr7revS1_Norm$tot_hits_s1
genedata_chr8revS1_Norm$Sen1_clipnorm <- genedata_chr8revS1_Norm$Sen1_clip / genedata_chr8revS1_Norm$tot_hits_s1
genedata_chr9revS1_Norm$Sen1_clipnorm <- genedata_chr9revS1_Norm$Sen1_clip / genedata_chr9revS1_Norm$tot_hits_s1
genedata_chr10revS1_Norm$Sen1_clipnorm <- genedata_chr10revS1_Norm$Sen1_clip / genedata_chr10revS1_Norm$tot_hits_s1
genedata_chr11revS1_Norm$Sen1_clipnorm <- genedata_chr11revS1_Norm$Sen1_clip / genedata_chr11revS1_Norm$tot_hits_s1
genedata_chr12revS1_Norm$Sen1_clipnorm <- genedata_chr12revS1_Norm$Sen1_clip / genedata_chr12revS1_Norm$tot_hits_s1
genedata_chr13revS1_Norm$Sen1_clipnorm <- genedata_chr13revS1_Norm$Sen1_clip / genedata_chr13revS1_Norm$tot_hits_s1
genedata_chr14revS1_Norm$Sen1_clipnorm <- genedata_chr14revS1_Norm$Sen1_clip / genedata_chr14revS1_Norm$tot_hits_s1
genedata_chr15revS1_Norm$Sen1_clipnorm <- genedata_chr15revS1_Norm$Sen1_clip / genedata_chr15revS1_Norm$tot_hits_s1
genedata_chr16revS1_Norm$Sen1_clipnorm <- genedata_chr16revS1_Norm$Sen1_clip / genedata_chr16revS1_Norm$tot_hits_s1

genedata_chr1fwS1_Norm$Sen1_clipnorm <- genedata_chr1fwS1_Norm$Sen1_clip / genedata_chr1fwS1_Norm$tot_hits_s1
genedata_chr2fwS1_Norm$Sen1_clipnorm <- genedata_chr2fwS1_Norm$Sen1_clip / genedata_chr2fwS1_Norm$tot_hits_s1
genedata_chr3fwS1_Norm$Sen1_clipnorm <- genedata_chr3fwS1_Norm$Sen1_clip / genedata_chr3fwS1_Norm$tot_hits_s1
genedata_chr4fwS1_Norm$Sen1_clipnorm <- genedata_chr4fwS1_Norm$Sen1_clip / genedata_chr4fwS1_Norm$tot_hits_s1
genedata_chr5fwS1_Norm$Sen1_clipnorm <- genedata_chr5fwS1_Norm$Sen1_clip / genedata_chr5fwS1_Norm$tot_hits_s1
genedata_chr6fwS1_Norm$Sen1_clipnorm <- genedata_chr6fwS1_Norm$Sen1_clip / genedata_chr6fwS1_Norm$tot_hits_s1
genedata_chr7fwS1_Norm$Sen1_clipnorm <- genedata_chr7fwS1_Norm$Sen1_clip / genedata_chr7fwS1_Norm$tot_hits_s1
genedata_chr8fwS1_Norm$Sen1_clipnorm <- genedata_chr8fwS1_Norm$Sen1_clip / genedata_chr8fwS1_Norm$tot_hits_s1
genedata_chr9fwS1_Norm$Sen1_clipnorm <- genedata_chr9fwS1_Norm$Sen1_clip / genedata_chr9fwS1_Norm$tot_hits_s1
genedata_chr10fwS1_Norm$Sen1_clipnorm <- genedata_chr10fwS1_Norm$Sen1_clip / genedata_chr10fwS1_Norm$tot_hits_s1
genedata_chr11fwS1_Norm$Sen1_clipnorm <- genedata_chr11fwS1_Norm$Sen1_clip / genedata_chr11fwS1_Norm$tot_hits_s1
genedata_chr12fwS1_Norm$Sen1_clipnorm <- genedata_chr12fwS1_Norm$Sen1_clip / genedata_chr12fwS1_Norm$tot_hits_s1
genedata_chr13fwS1_Norm$Sen1_clipnorm <- genedata_chr13fwS1_Norm$Sen1_clip / genedata_chr13fwS1_Norm$tot_hits_s1
genedata_chr14fwS1_Norm$Sen1_clipnorm <- genedata_chr14fwS1_Norm$Sen1_clip / genedata_chr14fwS1_Norm$tot_hits_s1
genedata_chr15fwS1_Norm$Sen1_clipnorm <- genedata_chr15fwS1_Norm$Sen1_clip / genedata_chr15fwS1_Norm$tot_hits_s1
genedata_chr16fwS1_Norm$Sen1_clipnorm <- genedata_chr16fwS1_Norm$Sen1_clip / genedata_chr16fwS1_Norm$tot_hits_s1

#norm data write
write.table(genedata_chr1revS1_Norm, file = "genedata_chr1revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2revS1_Norm, file = "genedata_chr2revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3revS1_Norm, file = "genedata_chr3revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4revS1_Norm, file = "genedata_chr4revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5revS1_Norm, file = "genedata_chr5revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6revS1_Norm, file = "genedata_chr6revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7revS1_Norm, file = "genedata_chr7revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8revS1_Norm, file = "genedata_chr8revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9revS1_Norm, file = "genedata_chr9revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10revS1_Norm, file = "genedata_chr10revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11revS1_Norm, file = "genedata_chr11revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12revS1_Norm, file = "genedata_chr12revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13revS1_Norm, file = "genedata_chr13revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14revS1_Norm, file = "genedata_chr14revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15revS1_Norm, file = "genedata_chr15revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16revS1_Norm, file = "genedata_chr16revS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1fwS1_Norm, file = "genedata_chr1fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fwS1_Norm, file = "genedata_chr2fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fwS1_Norm, file = "genedata_chr3fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fwS1_Norm, file = "genedata_chr4fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fwS1_Norm, file = "genedata_chr5fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fwS1_Norm, file = "genedata_chr6fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fwS1_Norm, file = "genedata_chr7fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fwS1_Norm, file = "genedata_chr8fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fwS1_Norm, file = "genedata_chr9fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fwS1_Norm, file = "genedata_chr10fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fwS1_Norm, file = "genedata_chr11fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fwS1_Norm, file = "genedata_chr12fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fwS1_Norm, file = "genedata_chr13fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fwS1_Norm, file = "genedata_chr14fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fwS1_Norm, file = "genedata_chr15fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fwS1_Norm, file = "genedata_chr16fwS1_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)


