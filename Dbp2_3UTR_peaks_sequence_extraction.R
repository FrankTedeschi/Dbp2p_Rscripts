
setwd("C:/Users/fated/OneDrive/R")

#loading packages
library("plyr", lib.loc="C:/Users/Ulf-Peter/Music/Google Drive/Desktop/Documents/R/win-library/3.1")
library("dplyr", lib.loc="C:/Users/Ulf-Peter/Music/Google Drive/Desktop/Documents/R/win-library/3.1")
library("data.table", lib.loc="C:/Users/Ulf-Peter/Music/Google Drive/Desktop/Documents/R/win-library/3.1")
library(gdata)
library(reshape2)
library(seqinr)

D2_peaks_3UTRonly<-read.delim("D2_peaks_3UTR_only.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
colnames(D2_peaks_3UTRonly)<- c("chr","start","end","id","num","strand")

D2peaks_fw<- D2_peaks_3UTRonly[which(D2_peaks_3UTRonly$strand=="+"),]
D2peaks_rev<- D2_peaks_3UTRonly[which(D2_peaks_3UTRonly$strand=="-"),]

D2peaks_fw[,c(2,3)] <- sapply (D2peaks_fw[,c(2,3)], as.numeric)



D2peaks_fw<-read.delim("Dbp2_Watson_Peaks.tab",sep="\t",header = F, quote="\"", stringsAsFactors=F)
D2peaks_rev<-read.delim("Dbp2_Crick_Peaks.tab",sep="\t",header = F, quote="\"", stringsAsFactors=F)

colnames(D2peaks_fw)<- c("chr","start","end","x","amp","strand","pvalue")
colnames(D2peaks_rev)<- c("chr","start","end","x","amp","strand","pvalue")

D2peaks_fw$peakmidpoint<- ((D2peaks_fw$end-D2peaks_fw$start)/2)+D2peaks_fw$start
D2peaks_fw$peakmidpointint<- as.integer(D2peaks_fw$peakmidpoint)

D2peaks_rev$peakmidpoint<- ((D2peaks_rev$end-D2peaks_rev$start)/2)+D2peaks_rev$start
D2peaks_rev$peakmidpointint<- as.integer(D2peaks_rev$peakmidpoint)

chr1fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrI"),]
chr2fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrII"),]
chr3fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrIII"),]
chr4fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrIV"),]
chr5fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrV"),]
chr6fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrVI"),]
chr7fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrVII"),]
chr8fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrVIII"),]
chr9fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrIX"),]
chr10fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrX"),]
chr11fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXI"),]
chr12fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXII"),]
chr13fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXIII"),]
chr14fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXIV"),]
chr15fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXV"),]
chr16fw_D2peak<- D2peaks_fw[which(D2peaks_fw$chr=="chrXVI"),]

chr1rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrI"),]
chr2rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrII"),]
chr3rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrIII"),]
chr4rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrIV"),]
chr5rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrV"),]
chr6rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrVI"),]
chr7rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrVII"),]
chr8rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrVIII"),]
chr9rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrIX"),]
chr10rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrX"),]
chr11rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXI"),]
chr12rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXII"),]
chr13rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXIII"),]
chr14rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXIV"),]
chr15rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXV"),]
chr16rev_D2peak<- D2peaks_rev[which(D2peaks_rev$chr=="chrXVI"),]

seq1<-read.fasta("chr01.fsa.txt",seqtype="DNA")
seq2<-read.fasta("chr02.fsa.txt",seqtype="DNA")
seq3<-read.fasta("chr03.fsa.txt",seqtype="DNA")
seq4<-read.fasta("chr04.fsa.txt",seqtype="DNA")
seq5<-read.fasta("chr05.fsa.txt",seqtype="DNA")
seq6<-read.fasta("chr06.fsa.txt",seqtype="DNA")
seq7<-read.fasta("chr07.fsa.txt",seqtype="DNA")
seq8<-read.fasta("chr08.fsa.txt",seqtype="DNA")
seq9<-read.fasta("chr09.fsa.txt",seqtype="DNA")
seq10<-read.fasta("chr10.fsa.txt",seqtype="DNA")
seq11<-read.fasta("chr11.fsa.txt",seqtype="DNA")
seq12<-read.fasta("chr12.fsa.txt",seqtype="DNA")
seq13<-read.fasta("chr13.fsa.txt",seqtype="DNA")
seq14<-read.fasta("chr14.fsa.txt",seqtype="DNA")
seq15<-read.fasta("chr15.fsa.txt",seqtype="DNA")
seq16<-read.fasta("chr16.fsa.txt",seqtype="DNA")

chrlength<- read.delim("yeastchromlength.txt")
chrlength<-as.data.frame(chrlength)

#writing a column of sequence length
pos1 <- as.data.frame(c(1:(chrlength[1,2])))
pos2 <- as.data.frame(c(1:(chrlength[2,2])))
pos3 <- as.data.frame(c(1:(chrlength[3,2])))
pos4 <- as.data.frame(c(1:(chrlength[4,2])))
pos5 <- as.data.frame(c(1:(chrlength[5,2])))
pos6 <- as.data.frame(c(1:(chrlength[6,2])))
pos7 <- as.data.frame(c(1:(chrlength[7,2])))
pos8 <- as.data.frame(c(1:(chrlength[8,2])))
pos9 <- as.data.frame(c(1:(chrlength[9,2])))
pos10 <- as.data.frame(c(1:(chrlength[10,2])))
pos11 <- as.data.frame(c(1:(chrlength[11,2])))
pos12 <- as.data.frame(c(1:(chrlength[12,2])))
pos13 <- as.data.frame(c(1:(chrlength[13,2])))
pos14 <- as.data.frame(c(1:(chrlength[14,2])))
pos15 <- as.data.frame(c(1:(chrlength[15,2])))
pos16 <-as.data.frame( c(1:(chrlength[16,2])))

#writing a column of sequence length
pos1 <- as.data.frame(c(1:(chrlength[1,2])))
pos2 <- as.data.frame(c(1:(chrlength[2,2])))
pos3 <- as.data.frame(c(1:(chrlength[3,2])))
pos4 <- as.data.frame(c(1:(chrlength[4,2])))
pos5 <- as.data.frame(c(1:(chrlength[5,2])))
pos6 <- as.data.frame(c(1:(chrlength[6,2])))
pos7 <- as.data.frame(c(1:(chrlength[7,2])))
pos8 <- as.data.frame(c(1:(chrlength[8,2])))
pos9 <- as.data.frame(c(1:(chrlength[9,2])))
pos10 <- as.data.frame(c(1:(chrlength[10,2])))
pos11 <- as.data.frame(c(1:(chrlength[11,2])))
pos12 <- as.data.frame(c(1:(chrlength[12,2])))
pos13 <- as.data.frame(c(1:(chrlength[13,2])))
pos14 <- as.data.frame(c(1:(chrlength[14,2])))
pos15 <- as.data.frame(c(1:(chrlength[15,2])))
pos16 <-as.data.frame( c(1:(chrlength[16,2])))

geneSeqfw1<-seq1[[1]][1:nrow(pos1)]
geneSeqfw2<-seq2[[1]][1:nrow(pos2)]
geneSeqfw3<-seq3[[1]][1:nrow(pos3)]
geneSeqfw4<-seq4[[1]][1:nrow(pos4)]
geneSeqfw5<-seq5[[1]][1:nrow(pos5)]
geneSeqfw6<-seq6[[1]][1:nrow(pos6)]
geneSeqfw7<-seq7[[1]][1:nrow(pos7)]
geneSeqfw8<-seq8[[1]][1:nrow(pos8)]
geneSeqfw9<-seq9[[1]][1:nrow(pos9)]
geneSeqfw10<-seq10[[1]][1:nrow(pos10)]
geneSeqfw11<-seq11[[1]][1:nrow(pos11)]
geneSeqfw12<-seq12[[1]][1:nrow(pos12)]
geneSeqfw13<-seq13[[1]][1:nrow(pos13)]
geneSeqfw14<-seq14[[1]][1:nrow(pos14)]
geneSeqfw15<-seq15[[1]][1:nrow(pos15)]
geneSeqfw16<-seq16[[1]][1:nrow(pos16)]

geneSeqrev1<-comp(geneSeqfw1)
geneSeqrev2<-comp(geneSeqfw2)
geneSeqrev3<-comp(geneSeqfw3)
geneSeqrev4<-comp(geneSeqfw4)
geneSeqrev5<-comp(geneSeqfw5)
geneSeqrev6<-comp(geneSeqfw6)
geneSeqrev7<-comp(geneSeqfw7)
geneSeqrev8<-comp(geneSeqfw8)
geneSeqrev9<-comp(geneSeqfw9)
geneSeqrev10<-comp(geneSeqfw10)
geneSeqrev11<-comp(geneSeqfw11)
geneSeqrev12<-comp(geneSeqfw12)
geneSeqrev13<-comp(geneSeqfw13)
geneSeqrev14<-comp(geneSeqfw14)
geneSeqrev15<-comp(geneSeqfw15)
geneSeqrev16<-comp(geneSeqfw16)

#sequence from reverse strand
TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr1rev_D2peak)){  
  test<- getFrag(geneSeqrev1,begin=chr1rev_D2peak$peakmidpoint[i]-7,end=chr1rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr1rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))


TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr2rev_D2peak)){  
  test<- getFrag(geneSeqrev2,begin=chr2rev_D2peak$peakmidpoint[i]-7,end=chr2rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr2rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))


TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr3rev_D2peak)){  
  test<- getFrag(geneSeqrev3,begin=chr3rev_D2peak$peakmidpoint[i]-7,end=chr3rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr3rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr4rev_D2peak)){  
  test<- getFrag(geneSeqrev4,begin=chr4rev_D2peak$peakmidpoint[i]-7,end=chr4rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr4rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr5rev_D2peak)){  
  test<- getFrag(geneSeqrev5,begin=chr5rev_D2peak$peakmidpoint[i]-7,end=chr5rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr5rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr6rev_D2peak)){  
  test<- getFrag(geneSeqrev6,begin=chr6rev_D2peak$peakmidpoint[i]-7,end=chr6rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr6rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr7rev_D2peak)){  
  test<- getFrag(geneSeqrev7,begin=chr7rev_D2peak$peakmidpoint[i]-7,end=chr7rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr7rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr8rev_D2peak)){  
  test<- getFrag(geneSeqrev8,begin=chr8rev_D2peak$peakmidpoint[i]-7,end=chr8rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr8rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr9rev_D2peak)){  
  test<- getFrag(geneSeqrev9,begin=chr9rev_D2peak$peakmidpoint[i]-7,end=chr9rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr9rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr10rev_D2peak)){  
  test<- getFrag(geneSeqrev10,begin=chr10rev_D2peak$peakmidpoint[i]-7,end=chr10rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr10rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr11rev_D2peak)){  
  test<- getFrag(geneSeqrev11,begin=chr11rev_D2peak$peakmidpoint[i]-7,end=chr11rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr11rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr12rev_D2peak)){  
  test<- getFrag(geneSeqrev12,begin=chr12rev_D2peak$peakmidpoint[i]-7,end=chr12rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr12rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr13rev_D2peak)){  
  test<- getFrag(geneSeqrev13,begin=chr13rev_D2peak$peakmidpoint[i]-7,end=chr13rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr13rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr14rev_D2peak)){  
  test<- getFrag(geneSeqrev14,begin=chr14rev_D2peak$peakmidpoint[i]-7,end=chr14rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr14rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr15rev_D2peak)){  
  test<- getFrag(geneSeqrev15,begin=chr15rev_D2peak$peakmidpoint[i]-7,end=chr15rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr15rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr16rev_D2peak)){  
  test<- getFrag(geneSeqrev16,begin=chr16rev_D2peak$peakmidpoint[i]-7,end=chr16rev_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-rev(getSequence(test,1,8, as.string =T))
}
chr16rev_D2peak$TIScontext3_5<-c(unlist(TIScontext))

#watson strand seq get
TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr1fw_D2peak)){  
  test<- getFrag(geneSeqfw1,begin=chr1fw_D2peak$peakmidpoint[i]-7,end=chr1fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr1fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr2fw_D2peak)){  
  test<- getFrag(geneSeqfw2,begin=chr2fw_D2peak$peakmidpoint[i]-7,end=chr2fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr2fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr3fw_D2peak)){  
  test<- getFrag(geneSeqfw3,begin=chr3fw_D2peak$peakmidpoint[i]-7,end=chr3fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr3fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr4fw_D2peak)){  
  test<- getFrag(geneSeqfw4,begin=chr4fw_D2peak$peakmidpoint[i]-7,end=chr4fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr4fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr5fw_D2peak)){  
  test<- getFrag(geneSeqfw5,begin=chr5fw_D2peak$peakmidpoint[i]-7,end=chr5fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr5fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr6fw_D2peak)){  
  test<- getFrag(geneSeqfw6,begin=chr6fw_D2peak$peakmidpoint[i]-7,end=chr6fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr6fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr7fw_D2peak)){  
  test<- getFrag(geneSeqfw7,begin=chr7fw_D2peak$peakmidpoint[i]-7,end=chr7fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr7fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr8fw_D2peak)){  
  test<- getFrag(geneSeqfw8,begin=chr8fw_D2peak$peakmidpoint[i]-7,end=chr8fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr8fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr9fw_D2peak)){  
  test<- getFrag(geneSeqfw9,begin=chr9fw_D2peak$peakmidpoint[i]-7,end=chr9fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr9fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr10fw_D2peak)){  
  test<- getFrag(geneSeqfw10,begin=chr10fw_D2peak$peakmidpoint[i]-7,end=chr10fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr10fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr11fw_D2peak)){  
  test<- getFrag(geneSeqfw11,begin=chr11fw_D2peak$peakmidpoint[i]-7,end=chr11fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr11fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr12fw_D2peak)){  
  test<- getFrag(geneSeqfw12,begin=chr12fw_D2peak$peakmidpoint[i]-7,end=chr12fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr12fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr13fw_D2peak)){  
  test<- getFrag(geneSeqfw13,begin=chr13fw_D2peak$peakmidpoint[i]-7,end=chr13fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr13fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr14fw_D2peak)){  
  test<- getFrag(geneSeqfw14,begin=chr14fw_D2peak$peakmidpoint[i]-7,end=chr14fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr14fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr15fw_D2peak)){  
  test<- getFrag(geneSeqfw15,begin=chr15fw_D2peak$peakmidpoint[i]-7,end=chr15fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr15fw_D2peak$TIScontext<-c(unlist(TIScontext))

TIScontext<-NULL
test <- NULL
for (i in 1:nrow(chr16fw_D2peak)){  
  test<- getFrag(geneSeqfw16,begin=chr16fw_D2peak$peakmidpoint[i]-7,end=chr16fw_D2peak$peakmidpoint[i]+7)
  TIScontext[i]<-getSequence(test,1,8, as.string=T)
}
chr16fw_D2peak$TIScontext<-c(unlist(TIScontext))



library(sqldf)
#need sqldf package to reverse the sequence to make it 5 to 3' 
chr1rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr1rev_D2peak")
chr2rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr2rev_D2peak")
chr3rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr3rev_D2peak")
chr4rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr4rev_D2peak")
chr5rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr5rev_D2peak")
chr6rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr6rev_D2peak")
chr7rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr7rev_D2peak")
chr8rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr8rev_D2peak")
chr9rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr9rev_D2peak")
chr10rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr10rev_D2peak")
chr11rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr11rev_D2peak")
chr12rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr12rev_D2peak")
chr13rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr13rev_D2peak")
chr14rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr14rev_D2peak")
chr15rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr15rev_D2peak")
chr16rev_D2peak_TIScontext5_3<-sqldf("select TIScontext3_5, reverse (TIScontext3_5) 'reverse' from chr16rev_D2peak")

#this will join the new reverse correct sequence to the other table
chr1rev_D2peak$TIScontext5_3<-cbind(chr1rev_D2peak_TIScontext5_3$reverse)
chr2rev_D2peak$TIScontext5_3<-cbind(chr2rev_D2peak_TIScontext5_3$reverse)
chr3rev_D2peak$TIScontext5_3<-cbind(chr3rev_D2peak_TIScontext5_3$reverse)
chr4rev_D2peak$TIScontext5_3<-cbind(chr4rev_D2peak_TIScontext5_3$reverse)
chr5rev_D2peak$TIScontext5_3<-cbind(chr5rev_D2peak_TIScontext5_3$reverse)
chr6rev_D2peak$TIScontext5_3<-cbind(chr6rev_D2peak_TIScontext5_3$reverse)
chr7rev_D2peak$TIScontext5_3<-cbind(chr7rev_D2peak_TIScontext5_3$reverse)
chr8rev_D2peak$TIScontext5_3<-cbind(chr8rev_D2peak_TIScontext5_3$reverse)
chr9rev_D2peak$TIScontext5_3<-cbind(chr9rev_D2peak_TIScontext5_3$reverse)
chr10rev_D2peak$TIScontext5_3<-cbind(chr10rev_D2peak_TIScontext5_3$reverse)
chr11rev_D2peak$TIScontext5_3<-cbind(chr11rev_D2peak_TIScontext5_3$reverse)
chr12rev_D2peak$TIScontext5_3<-cbind(chr12rev_D2peak_TIScontext5_3$reverse)
chr13rev_D2peak$TIScontext5_3<-cbind(chr13rev_D2peak_TIScontext5_3$reverse)
chr14rev_D2peak$TIScontext5_3<-cbind(chr14rev_D2peak_TIScontext5_3$reverse)
chr15rev_D2peak$TIScontext5_3<-cbind(chr15rev_D2peak_TIScontext5_3$reverse)
chr16rev_D2peak$TIScontext5_3<-cbind(chr16rev_D2peak_TIScontext5_3$reverse)

D2peaks_seqfw <- rbind(chr1fw_D2peak,chr2fw_D2peak,chr3fw_D2peak,chr4fw_D2peak,chr5fw_D2peak,chr6fw_D2peak,chr7fw_D2peak,chr8fw_D2peak
                     ,chr9fw_D2peak,chr10fw_D2peak,chr11fw_D2peak,chr12fw_D2peak,chr13fw_D2peak,chr14fw_D2peak,chr15fw_D2peak,chr16fw_D2peak)

D2peaks_seqrev <- rbind(chr1rev_D2peak,chr2rev_D2peak,chr3rev_D2peak,chr4rev_D2peak,chr5rev_D2peak,chr6rev_D2peak,chr7rev_D2peak,chr8rev_D2peak
                     ,chr9rev_D2peak,chr10rev_D2peak,chr11rev_D2peak,chr12rev_D2peak,chr13rev_D2peak,chr14rev_D2peak,chr15rev_D2peak,chr16rev_D2peak)

write.table(D2peaks_seqfw,file="D2_3UTRpeakonly_sequences_fw.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(D2peaks_seqrev,file="D2_3UTRpeakonly_sequences_rev.txt",sep="\t",row.names = F,col.names = T, quote=T)


write.table(chr3rev_D2peak,file="chr3rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr4rev_D2peak,file="chr4rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr5rev_D2peak,file="chr5rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr6rev_D2peak,file="chr6rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr7rev_D2peak,file="chr7rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr8rev_D2peak,file="chr8rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr9rev_D2peak,file="chr9rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr10rev_D2peak,file="chr10rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr11rev_D2peak,file="chr11rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr12rev_D2peak,file="chr12rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr13rev_D2peak,file="chr13rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr14rev_D2peak,file="chr14rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr15rev_D2peak,file="chr15rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr16rev_D2peak,file="chr16rev_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)

write.table(chr1fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr2fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr3fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr4fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr5fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr6fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr7fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr8fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr9fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr10fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr11fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr12fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr13fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr14fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr15fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(chr16fw_D2peak,file="chr3fw_D2peak.txt",sep="\t",row.names = F,col.names = T, quote=T)

colnames(chr1fw_D2peak)[9]<- "pos"
colnames(chr2fw_D2peak)[9]<- "pos"
colnames(chr3fw_D2peak)[9]<- "pos"
colnames(chr4fw_D2peak)[9]<- "pos"
colnames(chr5fw_D2peak)[9]<- "pos"
colnames(chr6fw_D2peak)[9]<- "pos"
colnames(chr7fw_D2peak)[9]<- "pos"
colnames(chr8fw_D2peak)[9]<- "pos"
colnames(chr9fw_D2peak)[9]<- "pos"
colnames(chr10fw_D2peak)[9]<- "pos"
colnames(chr11fw_D2peak)[9]<- "pos"
colnames(chr12fw_D2peak)[9]<- "pos"
colnames(chr13fw_D2peak)[9]<- "pos"
colnames(chr14fw_D2peak)[9]<- "pos"
colnames(chr15fw_D2peak)[9]<- "pos"
colnames(chr16fw_D2peak)[9]<- "pos"

colnames(chr1rev_D2peak)[9]<- "pos"
colnames(chr2rev_D2peak)[9]<- "pos"

colnames(chr3rev_D2peak)[9]<- "pos"
colnames(chr4rev_D2peak)[9]<- "pos"
colnames(chr5rev_D2peak)[9]<- "pos"
colnames(chr6rev_D2peak)[9]<- "pos"
colnames(chr7rev_D2peak)[9]<- "pos"
colnames(chr8rev_D2peak)[9]<- "pos"
colnames(chr9rev_D2peak)[9]<- "pos"
colnames(chr10rev_D2peak)[9]<- "pos"
colnames(chr11rev_D2peak)[9]<- "pos"
colnames(chr12rev_D2peak)[9]<- "pos"
colnames(chr13rev_D2peak)[9]<- "pos"
colnames(chr14rev_D2peak)[9]<- "pos"
colnames(chr15rev_D2peak)[9]<- "pos"
colnames(chr16rev_D2peak)[9]<- "pos"