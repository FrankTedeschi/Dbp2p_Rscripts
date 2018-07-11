#Dbp2 binding from 3' end.

library(gdata)
library(reshape2)
library(plyr)

#read in gene data table
setwd("C:/Users/fated/OneDrive/R")

genedata_chr1rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr1r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr2r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr3r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr4r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr5r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr6r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr7r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr8r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr9r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr10r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr11r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr12r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr13r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr14r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr15r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr16r_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr1f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr2f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr3f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr4f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr5f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr6f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr7f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr8f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr9f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr10f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr11f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr12f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr13f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr14f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr15f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw_Sen1norm<-read.delim("MasterGeneData_D2S1D2rep_chr16f_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

###Take average of two dbp2 data sets###
genedata_chr1rev_Sen1norm$D2average<- (genedata_chr1rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr1rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr2rev_Sen1norm$D2average<- (genedata_chr2rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr2rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr3rev_Sen1norm$D2average<- (genedata_chr3rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr3rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr4rev_Sen1norm$D2average<- (genedata_chr4rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr4rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr5rev_Sen1norm$D2average<- (genedata_chr5rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr5rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr6rev_Sen1norm$D2average<- (genedata_chr6rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr6rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr7rev_Sen1norm$D2average<- (genedata_chr7rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr7rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr8rev_Sen1norm$D2average<- (genedata_chr8rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr8rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr9rev_Sen1norm$D2average<- (genedata_chr9rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr9rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr10rev_Sen1norm$D2average<- (genedata_chr10rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr10rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr11rev_Sen1norm$D2average<- (genedata_chr11rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr11rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr12rev_Sen1norm$D2average<- (genedata_chr12rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr12rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr13rev_Sen1norm$D2average<- (genedata_chr13rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr13rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr14rev_Sen1norm$D2average<- (genedata_chr14rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr14rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr15rev_Sen1norm$D2average<- (genedata_chr15rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr15rev_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr16rev_Sen1norm$D2average<- (genedata_chr16rev_Sen1norm$Dbp2_iCLIPnorm + genedata_chr16rev_Sen1norm$Dbp2rep_iCLIPnorm)/2

genedata_chr1fw_Sen1norm$D2average<- (genedata_chr1fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr1fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr2fw_Sen1norm$D2average<- (genedata_chr2fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr2fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr3fw_Sen1norm$D2average<- (genedata_chr3fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr3fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr4fw_Sen1norm$D2average<- (genedata_chr4fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr4fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr5fw_Sen1norm$D2average<- (genedata_chr5fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr5fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr6fw_Sen1norm$D2average<- (genedata_chr6fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr6fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr7fw_Sen1norm$D2average<- (genedata_chr7fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr7fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr8fw_Sen1norm$D2average<- (genedata_chr8fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr8fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr9fw_Sen1norm$D2average<- (genedata_chr9fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr9fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr10fw_Sen1norm$D2average<- (genedata_chr10fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr10fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr11fw_Sen1norm$D2average<- (genedata_chr11fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr11fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr12fw_Sen1norm$D2average<- (genedata_chr12fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr12fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr13fw_Sen1norm$D2average<- (genedata_chr13fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr13fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr14fw_Sen1norm$D2average<- (genedata_chr14fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr14fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr15fw_Sen1norm$D2average<- (genedata_chr15fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr15fw_Sen1norm$Dbp2rep_iCLIPnorm)/2
genedata_chr16fw_Sen1norm$D2average<- (genedata_chr16fw_Sen1norm$Dbp2_iCLIPnorm + genedata_chr16fw_Sen1norm$Dbp2rep_iCLIPnorm)/2

#load in tRNA end points 
tRNA_3end <-read.delim("tRNA_3'_ends.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

colnames(tRNA_3end)<- c("gene","chromosome","pos","strand")

#split by strand
tRNA_3end_crick<- tRNA_3end[which(tRNA_3end$strand=="-1"),]
tRNA_3end_watson<- tRNA_3end[which(tRNA_3end$strand=="1"),]

#two columns- chrom and pos
q<- c(2,3)
tRNA_3end_crick<-tRNA_3end_crick[,q]
tRNA_3end_watson<-tRNA_3end_watson[,q]

chr1rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr1"),]
chr2rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr2"),]
chr3rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr3"),]
chr4rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr4"),]
chr5rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr5"),]
chr6rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr6"),]
chr7rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr7"),]
chr8rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr8"),]
chr9rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr9"),]
chr10rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr10"),]
chr11rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr11"),]
chr12rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr12"),]
chr13rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr13"),]
chr14rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr14"),]
chr15rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr15"),]
chr16rev_tRNA_CDend<- tRNA_3end_crick[which(tRNA_3end_crick$chromosome=="chr16"),]

chr1fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr1"),]
chr2fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr2"),]
chr3fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr3"),]
chr4fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr4"),]
chr5fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr5"),]
chr6fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr6"),]
chr7fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr7"),]
chr8fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr8"),]
chr9fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr9"),]
chr10fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr10"),]
chr11fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr11"),]
chr12fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr12"),]
chr13fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr13"),]
chr14fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr14"),]
chr15fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr15"),]
chr16fw_tRNA_CDend<- tRNA_3end_watson[which(tRNA_3end_watson$chromosome=="chr16"),]


a<-c(-50:1)
b<-c(chr1fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat
rownames(mat)=UTR5_TISonly_chr1fw$uniqueID
colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr1fw_Sen1norm$pos, genedata_chr1fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr1fw<- join(md, D2clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1fw$pos, genedata_chr1fw$ratioDMtrm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1fw<- join(UTR5_TISonlySur_chr1fw, DMSratio, by = "pos")

#chr2fw
b<- NULL 
b<-c(chr2fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr2fw_Sen1norm$pos, genedata_chr2fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr2fw<- join(md, D2clip, by = "pos")

#chr3fw
b<- NULL 
b<-c(chr3fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr3fw_Sen1norm$pos, genedata_chr3fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr3fw<- join(md, D2clip, by = "pos")

#chr4fw
b<- NULL 
b<-c(chr4fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr4fw_Sen1norm$pos, genedata_chr4fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr4fw<- join(md, D2clip, by = "pos")

#chr5fw
b<- NULL 
b<-c(chr5fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr5fw_Sen1norm$pos, genedata_chr5fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr5fw<- join(md, D2clip, by = "pos")

#chr6fw
b<- NULL 
b<-c(chr6fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr6fw_Sen1norm$pos, genedata_chr6fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr6fw<- join(md, D2clip, by = "pos")

#chr7fw
b<- NULL 
b<-c(chr7fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr7fw_Sen1norm$pos, genedata_chr7fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr7fw<- join(md, D2clip, by = "pos")

#chr8fw
b<- NULL 
b<-c(chr8fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr8fw_Sen1norm$pos, genedata_chr8fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr8fw<- join(md, D2clip, by = "pos")

#chr9fw
b<- NULL 
b<-c(chr9fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr9fw_Sen1norm$pos, genedata_chr9fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr9fw<- join(md, D2clip, by = "pos")


#chr10fw
b<- NULL 
b<-c(chr10fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr10fw_Sen1norm$pos, genedata_chr10fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr10fw<- join(md, D2clip, by = "pos")

#chr11fw
b<- NULL 
b<-c(chr11fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr11fw_Sen1norm$pos, genedata_chr11fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr11fw<- join(md, D2clip, by = "pos")

#chr12fw
b<- NULL 
b<-c(chr12fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr12fw_Sen1norm$pos, genedata_chr12fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr12fw<- join(md, D2clip, by = "pos")

#chr13fw
b<- NULL 
b<-c(chr13fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr13fw_Sen1norm$pos, genedata_chr13fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr13fw<- join(md, D2clip, by = "pos")

#chr14fw
b<- NULL 
b<-c(chr14fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr14fw_Sen1norm$pos, genedata_chr14fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr14fw<- join(md, D2clip, by = "pos")

#chr15fw
b<- NULL 
b<-c(chr15fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr15fw_Sen1norm$pos, genedata_chr15fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr15fw<- join(md, D2clip, by = "pos")

#chr16fw
b<- NULL 
b<-c(chr16fw_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr16fw_Sen1norm$pos, genedata_chr16fw_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr16fw<- join(md, D2clip, by = "pos")

#ReverseStrand
b<-c(chr1rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat
rownames(mat)=UTR5_TISonly_chr1rev$uniqueID
colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr1rev_Sen1norm$pos, genedata_chr1rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr1rev<- join(md, D2clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1rev$pos, genedata_chr1rev$ratioDMtrm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1rev<- join(UTR5_TISonlySur_chr1rev, DMSratio, by = "pos")

#chr2rev
b<- NULL 
b<-c(chr2rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr2rev_Sen1norm$pos, genedata_chr2rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr2rev<- join(md, D2clip, by = "pos")

#chr3rev
b<- NULL 
b<-c(chr3rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr3rev_Sen1norm$pos, genedata_chr3rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr3rev<- join(md, D2clip, by = "pos")

#chr4rev
b<- NULL 
b<-c(chr4rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr4rev_Sen1norm$pos, genedata_chr4rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr4rev<- join(md, D2clip, by = "pos")

#chr5rev
b<- NULL 
b<-c(chr5rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr5rev_Sen1norm$pos, genedata_chr5rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr5rev<- join(md, D2clip, by = "pos")

#chr6rev
b<- NULL 
b<-c(chr6rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr6rev_Sen1norm$pos, genedata_chr6rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr6rev<- join(md, D2clip, by = "pos")

#chr7rev
b<- NULL 
b<-c(chr7rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr7rev_Sen1norm$pos, genedata_chr7rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr7rev<- join(md, D2clip, by = "pos")

#chr8rev
b<- NULL 
b<-c(chr8rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr8rev_Sen1norm$pos, genedata_chr8rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr8rev<- join(md, D2clip, by = "pos")

#chr9rev
b<- NULL 
b<-c(chr9rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr9rev_Sen1norm$pos, genedata_chr9rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr9rev<- join(md, D2clip, by = "pos")


#chr10rev
b<- NULL 
b<-c(chr10rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr10rev_Sen1norm$pos, genedata_chr10rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr10rev<- join(md, D2clip, by = "pos")

#chr11rev
b<- NULL 
b<-c(chr11rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr11rev_Sen1norm$pos, genedata_chr11rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr11rev<- join(md, D2clip, by = "pos")

#chr12rev
b<- NULL 
b<-c(chr12rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr12rev_Sen1norm$pos, genedata_chr12rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr12rev<- join(md, D2clip, by = "pos")

#chr13rev
b<- NULL 
b<-c(chr13rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr13rev_Sen1norm$pos, genedata_chr13rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr13rev<- join(md, D2clip, by = "pos")

#chr14rev
b<- NULL 
b<-c(chr14rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr14rev_Sen1norm$pos, genedata_chr14rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr14rev<- join(md, D2clip, by = "pos")

#chr15rev
b<- NULL 
b<-c(chr15rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr15rev_Sen1norm$pos, genedata_chr15rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr15rev<- join(md, D2clip, by = "pos")

#chr16rev
b<- NULL 
b<-c(chr16rev_tRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr16rev_Sen1norm$pos, genedata_chr16rev_Sen1norm$D2average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr16rev<- join(md, D2clip, by = "pos")

D2BindingPeaks_Sen1normsurround_all<- rbind(D2BindingPeaks_chr1fw,
                                            D2BindingPeaks_chr2fw,
                                            D2BindingPeaks_chr3fw,
                                            D2BindingPeaks_chr4fw,
                                            D2BindingPeaks_chr5fw,
                                            D2BindingPeaks_chr6fw,
                                            D2BindingPeaks_chr7fw,
                                            D2BindingPeaks_chr8fw,
                                            D2BindingPeaks_chr9fw,
                                            D2BindingPeaks_chr10fw,
                                            D2BindingPeaks_chr11fw,
                                            D2BindingPeaks_chr12fw,
                                            D2BindingPeaks_chr13fw,
                                            D2BindingPeaks_chr14fw,
                                            D2BindingPeaks_chr15fw,
                                            D2BindingPeaks_chr16fw,
                                            D2BindingPeaks_chr1rev,
                                            D2BindingPeaks_chr2rev,
                                            D2BindingPeaks_chr3rev,
                                            D2BindingPeaks_chr4rev,
                                            D2BindingPeaks_chr5rev,
                                            D2BindingPeaks_chr6rev,
                                            D2BindingPeaks_chr7rev,
                                            D2BindingPeaks_chr8rev,
                                            D2BindingPeaks_chr9rev,
                                            D2BindingPeaks_chr10rev,
                                            D2BindingPeaks_chr11rev,
                                            D2BindingPeaks_chr12rev,
                                            D2BindingPeaks_chr13rev,
                                            D2BindingPeaks_chr14rev,
                                            D2BindingPeaks_chr15rev,
                                            D2BindingPeaks_chr16rev
)

write.table(D2BindingPeaks_Sen1normsurround_all, file = "AlltRNA3'endlocationsBeforeAverage.txt", sep = "\t",row.names = F,col.names = F, quote=F)
D2BindingPeaks_Sen1normsurround_all<-read.delim("tRNA_3'_ends_rand.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
colnames(D2BindingPeaks_Sen1normsurround_all)<- c("UniqueID","Distance","pos","Dbp2rep_clip")

D2BindingPeaks_Sen1normsurround_all$Distance <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Distance)
D2BindingPeaks_Sen1normsurround_all$pos <- as.numeric(D2BindingPeaks_Sen1normsurround_all$pos)
D2BindingPeaks_Sen1normsurround_all$Dbp2rep_clip <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Dbp2rep_clip)

m<-tapply(D2BindingPeaks_Sen1normsurround_all$Dbp2rep_clip,list(D2BindingPeaks_Sen1normsurround_all$Distance), mean,na.rm=T)

xrange <- c(-50:0)
yrange <- range(m)

# set up the plot
plot(a, m, type="n", ylim=c(0,.04), xlab="Distance from mature tRNA 3' end",
     ylab="Dbp2rep Binding" )

# add lines
lines(c(-50:0), m, type="b", lwd=1.5,
      col="green")
# add a title and subtitle
title("DMS-Seq mean ratio around TIS on Chr1fwd", "example of line plot")

boxplot(Dbp2rep_clip~Distance, data=D2BindingPeaks_Sen1normsurround_all,notch=FALSE)

