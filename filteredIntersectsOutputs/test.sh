#!/bin/bash

items=('chr1_MATERNAL' 'chr1_PATERNAL' 'chr2_MATERNAL' 'chr2_PATERNAL' 'chr3_MATERNAL' 'chr3_PATERNAL' 'chr4_MATERNAL' 'chr4_PATERNAL' 'chr5_MATERNAL' 'chr5_PATERNAL' 'chr6_MATERNAL' 'chr6_PATERNAL' 'chr7_MATERNAL' 'chr7_PATERNAL' 'chr8_MATERNAL' 'chr8_PATERNAL' 'chr9_MATERNAL' 'chr9_PATERNAL' 'chr10_MATERNAL' 'chr10_PATERNAL' 'chr11_MATERNAL' 'chr11_PATERNAL' 'chr12_MATERNAL' 'chr12_PATERNAL' 'chr13_MATERNAL' 'chr13_PATERNAL' 'chr14_MATERNAL' 'chr14_PATERNAL' 'chr15_MATERNAL' 'chr15_PATERNAL' 'chr16_MATERNAL' 'chr16_PATERNAL' 'chr17_MATERNAL' 'chr17_PATERNAL' 'chr18_MATERNAL' 'chr18_PATERNAL' 'chr19_MATERNAL' 'chr19_PATERNAL' 'chr20_MATERNAL' 'chr20_PATERNAL' 'chr21_MATERNAL' 'chr21_PATERNAL' 'chr22_MATERNAL' 'chr22_PATERNAL' 'chrX_MATERNAL' 'chrY_PATERNAL')

for ((i=0; i<${#items[@]}; i++)); do
    bedtools intersect -wa -a /Users/emilyxu/Desktop/cdrproject/CDRStrictBedFiles/hg002_"${items[i]}".strictCDR.bed -b /Users/emilyxu/Desktop/cdrproject/filteredHG002Annotations/HG002-humanSC"${items[i]}".bed > "${items[i]}"_intersect.bed

done


