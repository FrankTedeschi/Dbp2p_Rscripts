# combine the Dbp2 peaks and the gene data table then filter for just the 3'UTR

#D2 peak table was made from script 'Dbp2_peaks_sequence_extraction' not reading in the table again here. 
#example: chr1fw_D2peak.txt, this has the sequence info.

# read in original gene data table from Ulf

genedata_chr1rev<-read.delim("chr1rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("chr2rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("chr3rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("chr4rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("chr5rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("chr6rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("chr7rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("chr8rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("chr9rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("chr10rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("chr11rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("chr12rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("chr13rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("chr14rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("chr15rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("chr16rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw<-read.delim("chr1fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("chr2fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("chr3fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("chr4fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("chr5fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("chr6fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("chr7fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("chr8fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("chr9fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("chr10fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("chr11fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("chr12fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("chr13fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("chr14fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("chr15fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("chr16fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)



#Keep only columns that I want
g <- c(1:6)
genedata_chr1revBase<-genedata_chr1rev[,g]
genedata_chr2revBase<-genedata_chr2rev[,g]
genedata_chr3revBase<-genedata_chr3rev[,g]
genedata_chr4revBase<-genedata_chr4rev[,g]
genedata_chr5revBase<-genedata_chr5rev[,g]
genedata_chr6revBase<-genedata_chr6rev[,g]
genedata_chr7revBase<-genedata_chr7rev[,g]
genedata_chr8revBase<-genedata_chr8rev[,g]
genedata_chr9revBase<-genedata_chr9rev[,g]
genedata_chr10revBase<-genedata_chr10rev[,g]
genedata_chr11revBase<-genedata_chr11rev[,g]
genedata_chr12revBase<-genedata_chr12rev[,g]
genedata_chr13revBase<-genedata_chr13rev[,g]
genedata_chr14revBase<-genedata_chr14rev[,g]
genedata_chr15revBase<-genedata_chr15rev[,g]
genedata_chr16revBase<-genedata_chr16rev[,g]

genedata_chr1fwBase<-genedata_chr1fw[,g]
genedata_chr2fwBase<-genedata_chr2fw[,g]
genedata_chr3fwBase<-genedata_chr3fw[,g]
genedata_chr4fwBase<-genedata_chr4fw[,g]
genedata_chr5fwBase<-genedata_chr5fw[,g]
genedata_chr6fwBase<-genedata_chr6fw[,g]
genedata_chr7fwBase<-genedata_chr7fw[,g]
genedata_chr8fwBase<-genedata_chr8fw[,g]
genedata_chr9fwBase<-genedata_chr9fw[,g]
genedata_chr10fwBase<-genedata_chr10fw[,g]
genedata_chr11fwBase<-genedata_chr11fw[,g]
genedata_chr12fwBase<-genedata_chr12fw[,g]
genedata_chr13fwBase<-genedata_chr13fw[,g]
genedata_chr14fwBase<-genedata_chr14fw[,g]
genedata_chr15fwBase<-genedata_chr15fw[,g]
genedata_chr16fwBase<-genedata_chr16fw[,g]

genedata_chr1revBase_3UTR<-genedata_chr1revBase[genedata_chr1revBase$feature=="3'UTR",]
genedata_chr2revBase_3UTR<-genedata_chr2revBase[genedata_chr2revBase$feature=="3'UTR",]
genedata_chr3revBase_3UTR<-genedata_chr3revBase[genedata_chr3revBase$feature=="3'UTR",]
genedata_chr4revBase_3UTR<-genedata_chr4revBase[genedata_chr4revBase$feature=="3'UTR",]
genedata_chr5revBase_3UTR<-genedata_chr5revBase[genedata_chr5revBase$feature=="3'UTR",]
genedata_chr6revBase_3UTR<-genedata_chr6revBase[genedata_chr6revBase$feature=="3'UTR",]
genedata_chr7revBase_3UTR<-genedata_chr7revBase[genedata_chr7revBase$feature=="3'UTR",]
genedata_chr8revBase_3UTR<-genedata_chr8revBase[genedata_chr8revBase$feature=="3'UTR",]
genedata_chr9revBase_3UTR<-genedata_chr9revBase[genedata_chr9revBase$feature=="3'UTR",]
genedata_chr10revBase_3UTR<-genedata_chr10revBase[genedata_chr10revBase$feature=="3'UTR",]
genedata_chr11revBase_3UTR<-genedata_chr11revBase[genedata_chr11revBase$feature=="3'UTR",]
genedata_chr12revBase_3UTR<-genedata_chr12revBase[genedata_chr12revBase$feature=="3'UTR",]
genedata_chr13revBase_3UTR<-genedata_chr13revBase[genedata_chr13revBase$feature=="3'UTR",]
genedata_chr14revBase_3UTR<-genedata_chr14revBase[genedata_chr14revBase$feature=="3'UTR",]
genedata_chr15revBase_3UTR<-genedata_chr15revBase[genedata_chr15revBase$feature=="3'UTR",]
genedata_chr16revBase_3UTR<-genedata_chr16revBase[genedata_chr16revBase$feature=="3'UTR",]

genedata_chr1fwBase_3UTR<-genedata_chr1fwBase[genedata_chr1fwBase$feature=="3'UTR",]
genedata_chr2fwBase_3UTR<-genedata_chr2fwBase[genedata_chr2fwBase$feature=="3'UTR",]
genedata_chr3fwBase_3UTR<-genedata_chr3fwBase[genedata_chr3fwBase$feature=="3'UTR",]
genedata_chr4fwBase_3UTR<-genedata_chr4fwBase[genedata_chr4fwBase$feature=="3'UTR",]
genedata_chr5fwBase_3UTR<-genedata_chr5fwBase[genedata_chr5fwBase$feature=="3'UTR",]
genedata_chr6fwBase_3UTR<-genedata_chr6fwBase[genedata_chr6fwBase$feature=="3'UTR",]
genedata_chr7fwBase_3UTR<-genedata_chr7fwBase[genedata_chr7fwBase$feature=="3'UTR",]
genedata_chr8fwBase_3UTR<-genedata_chr8fwBase[genedata_chr8fwBase$feature=="3'UTR",]
genedata_chr9fwBase_3UTR<-genedata_chr9fwBase[genedata_chr9fwBase$feature=="3'UTR",]
genedata_chr10fwBase_3UTR<-genedata_chr10fwBase[genedata_chr10fwBase$feature=="3'UTR",]
genedata_chr11fwBase_3UTR<-genedata_chr11fwBase[genedata_chr11fwBase$feature=="3'UTR",]
genedata_chr12fwBase_3UTR<-genedata_chr12fwBase[genedata_chr12fwBase$feature=="3'UTR",]
genedata_chr13fwBase_3UTR<-genedata_chr13fwBase[genedata_chr13fwBase$feature=="3'UTR",]
genedata_chr14fwBase_3UTR<-genedata_chr14fwBase[genedata_chr14fwBase$feature=="3'UTR",]
genedata_chr15fwBase_3UTR<-genedata_chr15fwBase[genedata_chr15fwBase$feature=="3'UTR",]
genedata_chr16fwBase_3UTR<-genedata_chr16fwBase[genedata_chr16fwBase$feature=="3'UTR",]

D2peak_seq_3UTR_chr1fw<-join(genedata_chr1fwBase_3UTR,chr1fw_D2peak, by='pos')
D2peak_seq_3UTR_chr2fw<-join(genedata_chr2fwBase_3UTR,chr2fw_D2peak, by='pos')
D2peak_seq_3UTR_chr3fw<-join(genedata_chr3fwBase_3UTR,chr3fw_D2peak, by='pos')
D2peak_seq_3UTR_chr4fw<-join(genedata_chr4fwBase_3UTR,chr4fw_D2peak, by='pos')
D2peak_seq_3UTR_chr5fw<-join(genedata_chr5fwBase_3UTR,chr5fw_D2peak, by='pos')
D2peak_seq_3UTR_chr6fw<-join(genedata_chr6fwBase_3UTR,chr6fw_D2peak, by='pos')
D2peak_seq_3UTR_chr7fw<-join(genedata_chr7fwBase_3UTR,chr7fw_D2peak, by='pos')
D2peak_seq_3UTR_chr8fw<-join(genedata_chr8fwBase_3UTR,chr8fw_D2peak, by='pos')
D2peak_seq_3UTR_chr9fw<-join(genedata_chr9fwBase_3UTR,chr9fw_D2peak, by='pos')
D2peak_seq_3UTR_chr10fw<-join(genedata_chr10fwBase_3UTR,chr10fw_D2peak, by='pos')
D2peak_seq_3UTR_chr11fw<-join(genedata_chr11fwBase_3UTR,chr11fw_D2peak, by='pos')
D2peak_seq_3UTR_chr12fw<-join(genedata_chr12fwBase_3UTR,chr12fw_D2peak, by='pos')
D2peak_seq_3UTR_chr13fw<-join(genedata_chr13fwBase_3UTR,chr13fw_D2peak, by='pos')
D2peak_seq_3UTR_chr14fw<-join(genedata_chr14fwBase_3UTR,chr14fw_D2peak, by='pos')
D2peak_seq_3UTR_chr15fw<-join(genedata_chr15fwBase_3UTR,chr15fw_D2peak, by='pos')
D2peak_seq_3UTR_chr16fw<-join(genedata_chr16fwBase_3UTR,chr16fw_D2peak, by='pos')

D2peak_seq_3UTR_chr1rev<-join(genedata_chr1revBase_3UTR,chr1rev_D2peak, by='pos')
D2peak_seq_3UTR_chr2rev<-join(genedata_chr2revBase_3UTR,chr2rev_D2peak, by='pos')

D2peak_seq_3UTR_chr3rev<-join(genedata_chr3revBase_3UTR,chr3rev_D2peak, by='pos')
D2peak_seq_3UTR_chr4rev<-join(genedata_chr4revBase_3UTR,chr4rev_D2peak, by='pos')
D2peak_seq_3UTR_chr5rev<-join(genedata_chr5revBase_3UTR,chr5rev_D2peak, by='pos')
D2peak_seq_3UTR_chr6rev<-join(genedata_chr6revBase_3UTR,chr6rev_D2peak, by='pos')
D2peak_seq_3UTR_chr7rev<-join(genedata_chr7revBase_3UTR,chr7rev_D2peak, by='pos')
D2peak_seq_3UTR_chr8rev<-join(genedata_chr8revBase_3UTR,chr8rev_D2peak, by='pos')
D2peak_seq_3UTR_chr9rev<-join(genedata_chr9revBase_3UTR,chr9rev_D2peak, by='pos')
D2peak_seq_3UTR_chr10rev<-join(genedata_chr10revBase_3UTR,chr10rev_D2peak, by='pos')
D2peak_seq_3UTR_chr11rev<-join(genedata_chr11revBase_3UTR,chr11rev_D2peak, by='pos')
D2peak_seq_3UTR_chr12rev<-join(genedata_chr12revBase_3UTR,chr12rev_D2peak, by='pos')
D2peak_seq_3UTR_chr13rev<-join(genedata_chr13revBase_3UTR,chr13rev_D2peak, by='pos')
D2peak_seq_3UTR_chr14rev<-join(genedata_chr14revBase_3UTR,chr14rev_D2peak, by='pos')
D2peak_seq_3UTR_chr15rev<-join(genedata_chr15revBase_3UTR,chr15rev_D2peak, by='pos')
D2peak_seq_3UTR_chr16rev<-join(genedata_chr16revBase_3UTR,chr16rev_D2peak, by='pos')

NoNA_D2peak_seq_3UTR_chr1fw<-D2peak_seq_3UTR_chr1fw[complete.cases(D2peak_seq_3UTR_chr1fw),]
NoNA_D2peak_seq_3UTR_chr2fw<-D2peak_seq_3UTR_chr2fw[complete.cases(D2peak_seq_3UTR_chr2fw),]
NoNA_D2peak_seq_3UTR_chr3fw<-D2peak_seq_3UTR_chr3fw[complete.cases(D2peak_seq_3UTR_chr3fw),]
NoNA_D2peak_seq_3UTR_chr4fw<-D2peak_seq_3UTR_chr4fw[complete.cases(D2peak_seq_3UTR_chr4fw),]
NoNA_D2peak_seq_3UTR_chr5fw<-D2peak_seq_3UTR_chr5fw[complete.cases(D2peak_seq_3UTR_chr5fw),]
NoNA_D2peak_seq_3UTR_chr6fw<-D2peak_seq_3UTR_chr6fw[complete.cases(D2peak_seq_3UTR_chr6fw),]
NoNA_D2peak_seq_3UTR_chr7fw<-D2peak_seq_3UTR_chr7fw[complete.cases(D2peak_seq_3UTR_chr7fw),]
NoNA_D2peak_seq_3UTR_chr8fw<-D2peak_seq_3UTR_chr8fw[complete.cases(D2peak_seq_3UTR_chr8fw),]
NoNA_D2peak_seq_3UTR_chr9fw<-D2peak_seq_3UTR_chr9fw[complete.cases(D2peak_seq_3UTR_chr9fw),]
NoNA_D2peak_seq_3UTR_chr10fw<-D2peak_seq_3UTR_chr10fw[complete.cases(D2peak_seq_3UTR_chr10fw),]
NoNA_D2peak_seq_3UTR_chr11fw<-D2peak_seq_3UTR_chr11fw[complete.cases(D2peak_seq_3UTR_chr11fw),]
NoNA_D2peak_seq_3UTR_chr12fw<-D2peak_seq_3UTR_chr12fw[complete.cases(D2peak_seq_3UTR_chr12fw),]
NoNA_D2peak_seq_3UTR_chr13fw<-D2peak_seq_3UTR_chr13fw[complete.cases(D2peak_seq_3UTR_chr13fw),]
NoNA_D2peak_seq_3UTR_chr14fw<-D2peak_seq_3UTR_chr14fw[complete.cases(D2peak_seq_3UTR_chr14fw),]
NoNA_D2peak_seq_3UTR_chr15fw<-D2peak_seq_3UTR_chr15fw[complete.cases(D2peak_seq_3UTR_chr15fw),]
NoNA_D2peak_seq_3UTR_chr16fw<-D2peak_seq_3UTR_chr16fw[complete.cases(D2peak_seq_3UTR_chr16fw),]

NoNA_D2peak_seq_3UTR_chr1rev<-D2peak_seq_3UTR_chr1rev[complete.cases(D2peak_seq_3UTR_chr1rev),]
NoNA_D2peak_seq_3UTR_chr2rev<-D2peak_seq_3UTR_chr2rev[complete.cases(D2peak_seq_3UTR_chr2rev),]
NoNA_D2peak_seq_3UTR_chr3rev<-D2peak_seq_3UTR_chr3rev[complete.cases(D2peak_seq_3UTR_chr3rev),]
NoNA_D2peak_seq_3UTR_chr4rev<-D2peak_seq_3UTR_chr4rev[complete.cases(D2peak_seq_3UTR_chr4rev),]
NoNA_D2peak_seq_3UTR_chr5rev<-D2peak_seq_3UTR_chr5rev[complete.cases(D2peak_seq_3UTR_chr5rev),]
NoNA_D2peak_seq_3UTR_chr6rev<-D2peak_seq_3UTR_chr6rev[complete.cases(D2peak_seq_3UTR_chr6rev),]
NoNA_D2peak_seq_3UTR_chr7rev<-D2peak_seq_3UTR_chr7rev[complete.cases(D2peak_seq_3UTR_chr7rev),]
NoNA_D2peak_seq_3UTR_chr8rev<-D2peak_seq_3UTR_chr8rev[complete.cases(D2peak_seq_3UTR_chr8rev),]
NoNA_D2peak_seq_3UTR_chr9rev<-D2peak_seq_3UTR_chr9rev[complete.cases(D2peak_seq_3UTR_chr9rev),]
NoNA_D2peak_seq_3UTR_chr10rev<-D2peak_seq_3UTR_chr10rev[complete.cases(D2peak_seq_3UTR_chr10rev),]
NoNA_D2peak_seq_3UTR_chr11rev<-D2peak_seq_3UTR_chr11rev[complete.cases(D2peak_seq_3UTR_chr11rev),]
NoNA_D2peak_seq_3UTR_chr12rev<-D2peak_seq_3UTR_chr12rev[complete.cases(D2peak_seq_3UTR_chr12rev),]
NoNA_D2peak_seq_3UTR_chr13rev<-D2peak_seq_3UTR_chr13rev[complete.cases(D2peak_seq_3UTR_chr13rev),]
NoNA_D2peak_seq_3UTR_chr14rev<-D2peak_seq_3UTR_chr14rev[complete.cases(D2peak_seq_3UTR_chr14rev),]
NoNA_D2peak_seq_3UTR_chr15rev<-D2peak_seq_3UTR_chr15rev[complete.cases(D2peak_seq_3UTR_chr15rev),]
NoNA_D2peak_seq_3UTR_chr16rev<-D2peak_seq_3UTR_chr16rev[complete.cases(D2peak_seq_3UTR_chr16rev),]

g <- c(16)
NoNA_D2peak_seq_3UTR_chr1rev<-NoNA_D2peak_seq_3UTR_chr1rev[,g]
NoNA_D2peak_seq_3UTR_chr2rev<-NoNA_D2peak_seq_3UTR_chr2rev[,g]
NoNA_D2peak_seq_3UTR_chr3rev<-NoNA_D2peak_seq_3UTR_chr3rev[,g]
NoNA_D2peak_seq_3UTR_chr4rev<-NoNA_D2peak_seq_3UTR_chr4rev[,g]
NoNA_D2peak_seq_3UTR_chr5rev<-NoNA_D2peak_seq_3UTR_chr5rev[,g]
NoNA_D2peak_seq_3UTR_chr6rev<-NoNA_D2peak_seq_3UTR_chr6rev[,g]
NoNA_D2peak_seq_3UTR_chr7rev<-NoNA_D2peak_seq_3UTR_chr7rev[,g]
NoNA_D2peak_seq_3UTR_chr8rev<-NoNA_D2peak_seq_3UTR_chr8rev[,g]
NoNA_D2peak_seq_3UTR_chr9rev<-NoNA_D2peak_seq_3UTR_chr9rev[,g]
NoNA_D2peak_seq_3UTR_chr10rev<-NoNA_D2peak_seq_3UTR_chr10rev[,g]
NoNA_D2peak_seq_3UTR_chr11rev<-NoNA_D2peak_seq_3UTR_chr11rev[,g]
NoNA_D2peak_seq_3UTR_chr12rev<-NoNA_D2peak_seq_3UTR_chr12rev[,g]
NoNA_D2peak_seq_3UTR_chr13rev<-NoNA_D2peak_seq_3UTR_chr13rev[,g]
NoNA_D2peak_seq_3UTR_chr14rev<-NoNA_D2peak_seq_3UTR_chr14rev[,g]
NoNA_D2peak_seq_3UTR_chr15rev<-NoNA_D2peak_seq_3UTR_chr15rev[,g]
NoNA_D2peak_seq_3UTR_chr16rev<-NoNA_D2peak_seq_3UTR_chr16rev[,g]
g <- c(15)
NoNA_D2peak_seq_3UTR_chr1fw<-NoNA_D2peak_seq_3UTR_chr1fw[,g]
NoNA_D2peak_seq_3UTR_chr2fw<-NoNA_D2peak_seq_3UTR_chr2fw[,g]
NoNA_D2peak_seq_3UTR_chr3fw<-NoNA_D2peak_seq_3UTR_chr3fw[,g]
NoNA_D2peak_seq_3UTR_chr4fw<-NoNA_D2peak_seq_3UTR_chr4fw[,g]
NoNA_D2peak_seq_3UTR_chr5fw<-NoNA_D2peak_seq_3UTR_chr5fw[,g]
NoNA_D2peak_seq_3UTR_chr6fw<-NoNA_D2peak_seq_3UTR_chr6fw[,g]
NoNA_D2peak_seq_3UTR_chr7fw<-NoNA_D2peak_seq_3UTR_chr7fw[,g]
NoNA_D2peak_seq_3UTR_chr8fw<-NoNA_D2peak_seq_3UTR_chr8fw[,g]
NoNA_D2peak_seq_3UTR_chr9fw<-NoNA_D2peak_seq_3UTR_chr9fw[,g]
NoNA_D2peak_seq_3UTR_chr10fw<-NoNA_D2peak_seq_3UTR_chr10fw[,g]
NoNA_D2peak_seq_3UTR_chr11fw<-NoNA_D2peak_seq_3UTR_chr11fw[,g]
NoNA_D2peak_seq_3UTR_chr12fw<-NoNA_D2peak_seq_3UTR_chr12fw[,g]
NoNA_D2peak_seq_3UTR_chr13fw<-NoNA_D2peak_seq_3UTR_chr13fw[,g]
NoNA_D2peak_seq_3UTR_chr14fw<-NoNA_D2peak_seq_3UTR_chr14fw[,g]
NoNA_D2peak_seq_3UTR_chr15fw<-NoNA_D2peak_seq_3UTR_chr15fw[,g]
NoNA_D2peak_seq_3UTR_chr16fw<-NoNA_D2peak_seq_3UTR_chr16fw[,g]

#concatenate

data.frame(D2repAllPeakseq_fw)
D2repAllPeakseq_fw<- rbind(NoNA_D2peak_seq_3UTR_chr1fw,
                        NoNA_D2peak_seq_3UTR_chr2fw,
                        NoNA_D2peak_seq_3UTR_chr3fw,
                        NoNA_D2peak_seq_3UTR_chr4fw,
                        NoNA_D2peak_seq_3UTR_chr5fw,
                        NoNA_D2peak_seq_3UTR_chr6fw,
                        NoNA_D2peak_seq_3UTR_chr7fw,
                        NoNA_D2peak_seq_3UTR_chr8fw,
                        NoNA_D2peak_seq_3UTR_chr9fw,
                        NoNA_D2peak_seq_3UTR_chr10fw,
                        NoNA_D2peak_seq_3UTR_chr11fw,
                        NoNA_D2peak_seq_3UTR_chr12fw,
                        NoNA_D2peak_seq_3UTR_chr13fw,
                        NoNA_D2peak_seq_3UTR_chr14fw,
                        NoNA_D2peak_seq_3UTR_chr15fw,
                        NoNA_D2peak_seq_3UTR_chr16fw)
# don't know what is up with the above data frame but it works
D2repAllPeakseq_rev<- rbind(NoNA_D2peak_seq_3UTR_chr1rev,
                        NoNA_D2peak_seq_3UTR_chr2rev,
                        NoNA_D2peak_seq_3UTR_chr3rev,
                        NoNA_D2peak_seq_3UTR_chr4rev,
                        NoNA_D2peak_seq_3UTR_chr5rev,
                        NoNA_D2peak_seq_3UTR_chr6rev,
                        NoNA_D2peak_seq_3UTR_chr7rev,
                        NoNA_D2peak_seq_3UTR_chr8rev,
                        NoNA_D2peak_seq_3UTR_chr9rev,
                        NoNA_D2peak_seq_3UTR_chr10rev,
                        NoNA_D2peak_seq_3UTR_chr11rev,
                        NoNA_D2peak_seq_3UTR_chr12rev,
                        NoNA_D2peak_seq_3UTR_chr13rev,
                        NoNA_D2peak_seq_3UTR_chr14rev,
                        NoNA_D2peak_seq_3UTR_chr15rev,
                        NoNA_D2peak_seq_3UTR_chr16rev
                        )
write.table(D2repAllPeakseq_fw,file="D2repALLPeaksseq_fw.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(D2repAllPeakseq_rev,file="D2repALLPeaksseq_rev.txt",sep="\t",row.names = F,col.names = T, quote=T)
