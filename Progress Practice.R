library(tidyr)
separate(LIWC.22.Results)
install.packages("installr")

library(installr)

updateR()
sessionInfo()
library(tidyr)
library(tidyr)
separate(LIWC.22.Results)
pivot_wider(names_from = "filename") %%
pivot_wider(LIWC.22.Results, names_from = WC, 
            Values_from = Analytic)
pivot_wider(LIWC.22.Results, names_from = "Filename")
LIWC.22.Results_wide <- LIWC.22.Results %>%
  pivot_wider(names_from = Filename, 
              values_from = c(WC, Analytic))
 

9/8/2023
LIWC.22.Results
library(tidyr)
library(dplyr)
LIWC_22_Results <- read_csv("LIWC-22 Results.csv")
# Make a new column for doctor/ patient 
LIWC_22_Results <- LIWC_22_Results %>% separate(Filename, c('ID', 'Order', 'dr_patient'), sep = "_")
LIWC_22_Results <- LIWC_22_Results %>% separate(dr_patient, 'dr_patient', sep = "[.]")
LIWC_22_Results$speaker_order <- paste(LIWC_22_Results$dr_patient,LIWC_22_Results$Order)

Small<- as.data.frame(cbind(LIWC_22_Results$ID, LIWC_22_Results$speaker_order, LIWC_22_Results$WC))
colnames(Small)<-c("ID", "speaker_order", "WC")  
                     
                     
  LIWC <- Small %>% 
  pivot_wider(
    names_from  = "speaker_order",
    values_from = "WC"
  ) %>% 
  print()
  
 
    
