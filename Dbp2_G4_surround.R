#script to extract the sequence locations from Dbp2 binding peaks.

library(gdata)
library(reshape2)
library(plyr)
#read in gene data table
setwd("C:/Users/fated/OneDrive/R")

genedata_chr1rev_Sen1norm<-read.delim("genedata_chr1revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev_Sen1norm<-read.delim("genedata_chr2revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev_Sen1norm<-read.delim("genedata_chr3revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev_Sen1norm<-read.delim("genedata_chr4revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev_Sen1norm<-read.delim("genedata_chr5revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev_Sen1norm<-read.delim("genedata_chr6revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev_Sen1norm<-read.delim("genedata_chr7revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev_Sen1norm<-read.delim("genedata_chr8revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev_Sen1norm<-read.delim("genedata_chr9revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev_Sen1norm<-read.delim("genedata_chr10revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev_Sen1norm<-read.delim("genedata_chr11revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev_Sen1norm<-read.delim("genedata_chr12revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev_Sen1norm<-read.delim("genedata_chr13revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev_Sen1norm<-read.delim("genedata_chr14revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev_Sen1norm<-read.delim("genedata_chr15revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev_Sen1norm<-read.delim("genedata_chr16revS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw_Sen1norm<-read.delim("genedata_chr1fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw_Sen1norm<-read.delim("genedata_chr2fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw_Sen1norm<-read.delim("genedata_chr3fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw_Sen1norm<-read.delim("genedata_chr4fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw_Sen1norm<-read.delim("genedata_chr5fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw_Sen1norm<-read.delim("genedata_chr6fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw_Sen1norm<-read.delim("genedata_chr7fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw_Sen1norm<-read.delim("genedata_chr8fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw_Sen1norm<-read.delim("genedata_chr9fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw_Sen1norm<-read.delim("genedata_chr10fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw_Sen1norm<-read.delim("genedata_chr11fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw_Sen1norm<-read.delim("genedata_chr12fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw_Sen1norm<-read.delim("genedata_chr13fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw_Sen1norm<-read.delim("genedata_chr14fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw_Sen1norm<-read.delim("genedata_chr15fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw_Sen1norm<-read.delim("genedata_chr16fwS1_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#load in Dbp2 peaks
Dbp2_peaks_crick<-read.delim("G4_Minus_2tet_OnSame.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
Dbp2_peaks_watson<-read.delim("G4_Plus_2tet_OnSame.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

q<- c(1,2)
Dbp2_peaks_crick<-Dbp2_peaks_crick[,q]
Dbp2_peaks_watson<-Dbp2_peaks_watson[,q]

colnames(Dbp2_peaks_crick) <- c("chromosome","pos")
colnames(Dbp2_peaks_watson) <- c("chromosome","pos")

chr1rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrI"),]
chr2rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrII"),]
chr3rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrIII"),]
chr4rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrIV"),]
chr5rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrV"),]
chr6rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrVI"),]
chr7rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrVII"),]
chr8rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrVIII"),]
chr9rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrIX"),]
chr10rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrX"),]
chr11rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXI"),]
chr12rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXII"),]
chr13rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXIII"),]
chr14rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXIV"),]
chr15rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXV"),]
chr16rev_D2peakpos<- Dbp2_peaks_crick[which(Dbp2_peaks_crick$chromosome=="chrXVI"),]

chr1fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrI"),]
chr2fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrII"),]
chr3fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrIII"),]
chr4fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrIV"),]
chr5fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrV"),]
chr6fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrVI"),]
chr7fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrVII"),]
chr8fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrVIII"),]
chr9fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrIX"),]
chr10fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrX"),]
chr11fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXI"),]
chr12fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXII"),]
chr13fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXIII"),]
chr14fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXIV"),]
chr15fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXV"),]
chr16fw_D2peakpos<- Dbp2_peaks_watson[which(Dbp2_peaks_watson$chromosome=="chrXVI"),]

#load datasets containing the potential TIS sites
#making the mock matrix 
a<-c(-25:50)
b<-c(chr1fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr1fw_Sen1norm$pos, genedata_chr1fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr1fw<- join(md, S1clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1fw$pos, genedata_chr1fw$ratioDMSNorm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1fw<- join(UTR5_TISonlySur_chr1fw, DMSratio, by = "pos")

#chr2fw
b<- NULL 
b<-c(chr2fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr2fw_Sen1norm$pos, genedata_chr2fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr2fw<- join(md, S1clip, by = "pos")

#chr3fw
b<- NULL 
b<-c(chr3fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr3fw_Sen1norm$pos, genedata_chr3fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr3fw<- join(md, S1clip, by = "pos")

#chr4fw
b<- NULL 
b<-c(chr4fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr4fw_Sen1norm$pos, genedata_chr4fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr4fw<- join(md, S1clip, by = "pos")

#chr5fw
b<- NULL 
b<-c(chr5fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr5fw_Sen1norm$pos, genedata_chr5fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr5fw<- join(md, S1clip, by = "pos")

#chr6fw
b<- NULL 
b<-c(chr6fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr6fw_Sen1norm$pos, genedata_chr6fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr6fw<- join(md, S1clip, by = "pos")

#chr7fw
b<- NULL 
b<-c(chr7fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr7fw_Sen1norm$pos, genedata_chr7fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr7fw<- join(md, S1clip, by = "pos")

#chr8fw
b<- NULL 
b<-c(chr8fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr8fw_Sen1norm$pos, genedata_chr8fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr8fw<- join(md, S1clip, by = "pos")

#chr9fw
b<- NULL 
b<-c(chr9fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr9fw_Sen1norm$pos, genedata_chr9fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr9fw<- join(md, S1clip, by = "pos")


#chr10fw
b<- NULL 
b<-c(chr10fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr10fw_Sen1norm$pos, genedata_chr10fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr10fw<- join(md, S1clip, by = "pos")

#chr11fw
b<- NULL 
b<-c(chr11fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr11fw_Sen1norm$pos, genedata_chr11fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr11fw<- join(md, S1clip, by = "pos")

#chr12fw
b<- NULL 
b<-c(chr12fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr12fw_Sen1norm$pos, genedata_chr12fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr12fw<- join(md, S1clip, by = "pos")

#chr13fw
b<- NULL 
b<-c(chr13fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr13fw_Sen1norm$pos, genedata_chr13fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr13fw<- join(md, S1clip, by = "pos")

#chr14fw
b<- NULL 
b<-c(chr14fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr14fw_Sen1norm$pos, genedata_chr14fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr14fw<- join(md, S1clip, by = "pos")

#chr15fw
b<- NULL 
b<-c(chr15fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr15fw_Sen1norm$pos, genedata_chr15fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr15fw<- join(md, S1clip, by = "pos")

#chr16fw
b<- NULL 
b<-c(chr16fw_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr16fw_Sen1norm$pos, genedata_chr16fw_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr16fw<- join(md, S1clip, by = "pos")

#ReverseStrand
b<-c(chr1rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr1rev_Sen1norm$pos, genedata_chr1rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr1rev<- join(md, S1clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1rev$pos, genedata_chr1rev$ratioDMSNorm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1rev<- join(UTR5_TISonlySur_chr1rev, DMSratio, by = "pos")

#chr2rev
b<- NULL 
b<-c(chr2rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr2rev_Sen1norm$pos, genedata_chr2rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr2rev<- join(md, S1clip, by = "pos")

#chr3rev
b<- NULL 
b<-c(chr3rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr3rev_Sen1norm$pos, genedata_chr3rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr3rev<- join(md, S1clip, by = "pos")

#chr4rev
b<- NULL 
b<-c(chr4rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr4rev_Sen1norm$pos, genedata_chr4rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr4rev<- join(md, S1clip, by = "pos")

#chr5rev
b<- NULL 
b<-c(chr5rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr5rev_Sen1norm$pos, genedata_chr5rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr5rev<- join(md, S1clip, by = "pos")

#chr6rev
b<- NULL 
b<-c(chr6rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr6rev_Sen1norm$pos, genedata_chr6rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr6rev<- join(md, S1clip, by = "pos")

#chr7rev
b<- NULL 
b<-c(chr7rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr7rev_Sen1norm$pos, genedata_chr7rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr7rev<- join(md, S1clip, by = "pos")

#chr8rev
b<- NULL 
b<-c(chr8rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr8rev_Sen1norm$pos, genedata_chr8rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr8rev<- join(md, S1clip, by = "pos")

#chr9rev
b<- NULL 
b<-c(chr9rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr9rev_Sen1norm$pos, genedata_chr9rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr9rev<- join(md, S1clip, by = "pos")


#chr10rev
b<- NULL 
b<-c(chr10rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr10rev_Sen1norm$pos, genedata_chr10rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr10rev<- join(md, S1clip, by = "pos")

#chr11rev
b<- NULL 
b<-c(chr11rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr11rev_Sen1norm$pos, genedata_chr11rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr11rev<- join(md, S1clip, by = "pos")

#chr12rev
b<- NULL 
b<-c(chr12rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr12rev_Sen1norm$pos, genedata_chr12rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr12rev<- join(md, S1clip, by = "pos")

#chr13rev
b<- NULL 
b<-c(chr13rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr13rev_Sen1norm$pos, genedata_chr13rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr13rev<- join(md, S1clip, by = "pos")

#chr14rev
b<- NULL 
b<-c(chr14rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr14rev_Sen1norm$pos, genedata_chr14rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr14rev<- join(md, S1clip, by = "pos")

#chr15rev
b<- NULL 
b<-c(chr15rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr15rev_Sen1norm$pos, genedata_chr15rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr15rev<- join(md, S1clip, by = "pos")

#chr16rev
b<- NULL 
b<-c(chr16rev_D2peakpos$pos)
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
S1clip<-NULL
S1clip<-as.data.frame(cbind(genedata_chr16rev_Sen1norm$pos, genedata_chr16rev_Sen1norm$Yra1_parclip))
colnames(S1clip)=c("pos","Sen1_clip")

D2BindingPeaks_chr16rev<- join(md, S1clip, by = "pos")

#concatonate
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
#as numeric
D2BindingPeaks_Sen1normsurround_all$Distance <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Distance)
D2BindingPeaks_Sen1normsurround_all$pos <- as.numeric(D2BindingPeaks_Sen1normsurround_all$pos)
D2BindingPeaks_Sen1normsurround_all$Dbp2rep_iCLIPnorm <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Sen1_clip)
D2BindingPeaks_Sen1normsurround_all[is.na(D2BindingPeaks_Sen1normsurround_all)] <- 0


write.table(D2BindingPeaks_Sen1normsurround_all, file = "Yra1_CDboxBinding_D2peaks_forRand.txt", sep = "\t",row.names = F,col.names = T, quote=F)
D2BindingPeaks_Sen1normsurround_all<-read.delim("Yra1_HboxBinding_D2peaks_forRand_done.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


m<-tapply(D2BindingPeaks_Sen1normsurround_all$Sen1_clip,list(D2BindingPeaks_Sen1normsurround_all$Distance), mean,na.rm=T)


xrange <- c(-30:30)
yrange <- range(m)

# set up the plot
plot(a, m, type="n", ylim=c(0,.1), xlab="Distance from Dbp2 Peak",
     ylab="Sen1 Binding" )

# add lines
lines(c(-30:30), m, type="b", lwd=1.5,
      col="green")
# add a title and subtitle
title("DMS-Seq mean ratio around TIS on Chr1fwd", "example of line plot")

m
