#set working directory
# Or ~/Desktop/Code it Up/
setwd("~/Desktop/research related/dissertation/dissertation")

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
RAdata$First_Patient <- toupper(RAdata$First_Patient)
RAdata$Tom_Actor <- toupper(RAdata$Tom_Actor)
RAdata$Freddie_Actor <- toupper(RAdata$Freddie_Actor)
RAdata$Tech_Difficulties <- toupper(RAdata$Tech_Difficulties)

#delete columns
RAdata <- subset(RAdata, select = -c(Start_Date, End_Date, Status, IP_Address, Progress, Duration_Seconds, Finished, Last_Name, First_Name, Email, Reference, Distribution_Channel, User_Language, Longitude, Latitude, Response_ID))

#split Tom Actor column into Tom Actor Name and Tom Actor Race
RAdata <- RAdata %>% separate(Tom_Actor, c("Tom_Actor_Name", "Tom_Actor_Race"), " ")

#split Freddie Actor column into Freddie Actor Name and Freddie Actor Race
RAdata <- RAdata %>% separate(Freddie_Actor, c("Freddie_Actor_Name", "Freddie_Actors_Race"), " ")

#create First Patient Race column (if First Patient = TOM then First Patient Race = Tom Actor Race)
RAdata$First_Patient_Race <- ifelse(RAdata$First_Patient=="TOM", RAdata$Tom_Actor_Race, ifelse(RAdata$First_Patient=="FREDDIE", RAdata$Freddie_Actor_Race, NA))

#create Tech Difficulties Order column (if Tech Difficulties = First Patient then Tech Difficulties Order = "First", "Second")
RAdata$Tech_Difficulties_Order <- ifelse(RAdata$Tech_Difficulties==RAdata$First_Patient, "First", "Second")

#create Tech Difficulties Race column (if Tech Difficulties = TOM then Tech Difficulties Race  = Tom Actor Race)
RAdata$Tech_Difficulties_Race <- ifelse(RAdata$Tech_Difficulties=="TOM", RAdata$Tom_Actor_Race, ifelse(RAdata$Tech_Difficulties=="FREDDIE", RAdata$Freddie_Actor_Race, NA))

#create Freddie Race column (if Tom Race = Black then Freddie Race = White and if Tom Race = White then Freddie Race = Black)
RAdata$Freddie_Actor_Race <- ifelse(RAdata$Tom_Actor_Race=="(BLACK)", "(WHITE)", ifelse(RAdata$Tom_Actor_Race=="(WHITE)", "(BLACK)", NA))

#delete Freddie Actors Race extra column
RAdata <- subset(RAdata, select = -c(Freddie_Actors_Race))

write.csv(RAdata, "RA_survey_clean.csv")





