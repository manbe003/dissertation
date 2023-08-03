#set working directory
# Or ~/Desktop/Code it Up/
setwd("/Users/admin/Desktop/Code it Up/")

#readr package
library (readr)
library (tidyr)


#import data and recognize as RAdata
RAdata <-read.csv("RA_survey.csv", header = TRUE, sep = ",")

#Rename Columns 
names(RAdata)[names(RAdata) == "StartDate"] <- "Start_Date"
names(RAdata)[names(RAdata) == "EndDate"] <- "End_Date"
names(RAdata)[names(RAdata) == "IPAddress"] <- "IP_Address"
names(RAdata)[names(RAdata) == "Duration..in.seconds."] <- "Duration_Seconds"
names(RAdata)[names(RAdata) == "RecordedDate"] <- "Recorded_Date"
names(RAdata)[names(RAdata) == "ResponseId"] <- "Response_ID"
names(RAdata)[names(RAdata) == "RecipientLastName"] <- "Last_Name"
names(RAdata)[names(RAdata) == "RecipientFirstName"] <- "First_Name"
names(RAdata)[names(RAdata) == "RecipientEmail"] <- "Email"
names(RAdata)[names(RAdata) == "ExternalReference"] <- "Reference"
names(RAdata)[names(RAdata) == "LocationLatitude"] <- "Latitude"
names(RAdata)[names(RAdata) == "LocationLongitude"] <- "Longitude"
names(RAdata)[names(RAdata) == "DistributionChannel"] <- "Distribution_Channel"
names(RAdata)[names(RAdata) == "UserLanguage"] <- "User_Language"
names(RAdata)[names(RAdata) == "Q1"] <- "Participant_ID"
names(RAdata)[names(RAdata) == "Q11"] <- "Lunch_SUD_Change"
names(RAdata)[names(RAdata) == "Q2"] <- "First_Patient"
names(RAdata)[names(RAdata) == "Q3"] <- "Tom_Actor"
names(RAdata)[names(RAdata) == "Q12"] <- "Freddie_Actor"
names(RAdata)[names(RAdata) == "Q4"] <- "Tech_Difficulties"
names(RAdata)[names(RAdata) == "Q8"] <- "Pre_Debrief_Suspicion"
names(RAdata)[names(RAdata) == "Q9"] <- "Additional_Considerations"

#Convert columns to uppercase
RAdata$Response_ID <- toupper(RAdata$Response_ID)
RAdata$Participant_ID <- toupper(RAdata$Participant_ID)

#delete columns
RAdata <- subset(RAdata, select = -c(Start_Date, End_Date, Status, IP_Address, Progress, Duration_Seconds, Finished, Last_Name, First_Name, Email, Reference, Distribution_Channel, User_Language, Longitude, Latitude, Response_ID))

#split Tom Actor column into Tom Actor Name and Tom Actor Race
RAdata <- RAdata %>% separate(Tom_Actor, c("Tom_Actor_Name", "Tom_Actor_Race"), " ")

#combine Study Id Qs
data3$Study_ID = paste(data3$Study_ID_Q1, data3$Study_ID_Q2, data3$Study_ID_Q3, data3$Study_ID_Q4, sep="")

