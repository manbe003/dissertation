#First put this in the terminal /Applications/LibreOffice.app/Contents/MacOS/soffice --headless --convert-to docx --outdir ~/Desktop/output ~/Desktop/convert/*.doc
library(officer)
library(dplyr)
library(stringr)
library(tidyr)
library(tm)
library(unpivotr)

setwd("~/Desktop/output/test")
file.list <- dir()
mylist<-list()

#read the document
separate_ptdr<-function(file.list){
  for (i in 1:length(file.list)){
file <- read_docx(file.list[i])
content<-docx_summary(file)

#now I want to pull the cells that contain "patient" 
content$text<-str_replace(content$text, "Tom", "Patient")
content$text<-str_replace(content$text, "Freddie", "Patient")
content$text<-str_replace(content$text, "Kendal", "Doctor")
patient<-content%>%filter(str_detect(content$text, 'Patient:'))

#now I want to remove the "patient:" so I will split after the colon

separate<-separate(patient,text, into=c(NA,"patient_words"), sep =":  ")
patient$separate<-separate$patient_words

#now I want to pull just that column 
patient_df<-as.data.frame(patient$separate)
colnames(patient_df)<-"Patient_words"

#repeat for dr
doc<-content%>%filter(str_detect(content$text, 'Doctor:'))

#now I want to remove the "doctor:" so I will split after the colon

separate<-separate(doc,text, into=c(NA,"doc_words"), sep =":  ")
doc$separate<-separate$doc_words

#now I want to pull just that column 
doc_df<-as.data.frame(doc$separate)
colnames(doc_df)<-"Doctor_words"




#now I want to save it as the file name that has ZZZ
title<-content%>%filter(str_detect(content$text, 'KMC'))
separate2<-separate(title,text, into=c(NA,"Title","Title_2", "Title_3"), sep ="_")
separate2$Title_2<-str_replace(separate2$Title_2, "-1","")
separate2$Title_3<-str_replace(separate2$Title_3, "-1","")

if(is.na(separate2$Title_3)){
  separate_pt<-str_c(separate2$Title,'_',separate2$Title_2,"_pt",".txt")
  separate_dr<-str_c(separate2$Title,'_',separate2$Title_2,"_dr",".txt")
}

if(!is.na(separate2$Title_3)){
separate2$Title<-str_replace(separate2$Title, "KMC","")
separate_pt<-str_c(separate2$Title,'',separate2$Title_2, "_", separate2$Title_3,"_pt",".txt")
separate_dr<-str_c(separate2$Title,'',separate2$Title_2,"_", separate2$Title_3,"_dr",".txt")
}

separate2$Title<-str_replace(separate2$Title, "ZZZ","")
write.table(patient_df, separate_pt, row.names = FALSE, col.names=FALSE)
write.table(doc_df, separate_dr, row.names = FALSE, col.names=FALSE)
  }
  }

sapply(file.list,separate_ptdr)




###now that I've saved, I need to figure out what records are missing
#and I think the best way, maybe, is to read in the RA spreadsheet and match with the file.list names?
setwd("~/Desktop/output/done")
file.list <- dir()
filelist<-as.data.frame(file.list)

ID_datamatrix_full<-filelist
#Take just the code
ID_datamatrix<-separate(filelist, file.list, into=(c("ID", NA, NA)), sep = "_")
ID_datamatrix_unique<-distinct(ID_datamatrix)

#look for instances with less than 4 separated records
table<-as.data.frame(table(ID_datamatrix$ID))

missing_1<-data.frame(NULL)

for (i in 1:length(table$Var1)){
  if(table$Freq[i] != 4){
    x<-as.data.frame(table[i,1])
    missing_1<-rbind(missing_1,x)
  }
}

#okay, now need to compare with RA records to see what is missing
#or with the files in the audio folder?!
setwd("~/Desktop/audio")
file.list <- dir()
filelist<-as.data.frame(file.list)

ID_KM<-separate(filelist, file.list, into=(c("ID", NA)), sep = "\\.")
colnames(ID_KM)[1]="ID"


ID_and_order<-separate(ID_datamatrix_full, file.list, into=(c("ID", "order", NA)), sep = "_")
ID_datamatrix_new<-as.data.frame(str_c(ID_and_order$ID, "_", ID_and_order$order))
colnames(ID_datamatrix_new)[1]="ID"
ID_datamatrix_new<-cbind(ID_datamatrix_new, "DM")

joined<-left_join(ID_KM, ID_datamatrix_new, by =)

colnames(missing_1)[1] = "ID"

joined<-distinct(joined)

colnames(missing_1)[1]<-"ID"
x<-data.frame(NA)
colnames(x)[1]<-"ID"

for (i in 1:length(joined$ID)){
  if(is.na(joined$`"DM"`[i])){
    y<-joined[i,1]
    missing_1<-rbind(missing_1,y)
  }
}

