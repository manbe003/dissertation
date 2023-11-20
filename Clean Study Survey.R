#set working directory
# Or ~/Desktop/Code it Up/
setwd("/Users/admin/Desktop/Code it Up/")

#readr package
library (readr)

#import data and recognize as SSdata
SSdata <-read.csv("StudySurvey.csv", header = TRUE, sep = ",")

#Rename Columns 
names(SSdata)[names(SSdata) == "StartDate"] <- "Start_Date"
names(SSdata)[names(SSdata) == "EndDate"] <- "End_Date"
names(SSdata)[names(SSdata) == "Status"] <- "Response_Type"
names(SSdata)[names(SSdata) == "Duration..in.seconds."] <- "Duration_Seconds"
names(SSdata)[names(SSdata) == "RecordedDate"] <- "Recorded_Date_study"
names(SSdata)[names(SSdata) == "ResponseId"] <- "Response_ID"
names(SSdata)[names(SSdata) == "DistributionChannel"] <- "Distribution_Channel"
names(SSdata)[names(SSdata) == "UserLanguage"] <- "User_Language"
names(SSdata)[names(SSdata) == "Q150"] <- "Informed_Consent"
names(SSdata)[names(SSdata) == "Q85"] <- "Study_ID_Summary"
names(SSdata)[names(SSdata) == "Q85_1_TEXT"] <- "Study_ID_Q1"
names(SSdata)[names(SSdata) == "Q85_2_TEXT"] <- "Study_ID_Q2"
names(SSdata)[names(SSdata) == "Q85_3_TEXT"] <- "Study_ID_Q3"
names(SSdata)[names(SSdata) == "Q85_4_TEXT"] <- "Study_ID_Q4"
names(SSdata)[names(SSdata) == "Q226"] <- "Medical_Year_study"
names(SSdata)[names(SSdata) == "Q154_1"] <- "SUDS_Baseline_study"
names(SSdata)[names(SSdata) == "Q228"] <- "STAI_1_Baseline_study"
names(SSdata)[names(SSdata) == "Q229"] <- "STAI_2_Baseline_study"
names(SSdata)[names(SSdata) == "Q230"] <- "STAI_3_Baseline_study"
names(SSdata)[names(SSdata) == "Q231"] <- "STAI_4_Baseline_study"
names(SSdata)[names(SSdata) == "Q232"] <- "STAI_5_Baseline_study"
names(SSdata)[names(SSdata) == "Q233"] <- "STAI_6_Baseline_study"
names(SSdata)[names(SSdata) == "Q234"] <- "STAI_7_Baseline_study"
names(SSdata)[names(SSdata) == "Q235"] <- "STAI_8_Baseline_study"
names(SSdata)[names(SSdata) == "Q236"] <- "STAI_9_Baseline_study"
names(SSdata)[names(SSdata) == "Q237"] <- "STAI_10_Baseline_study"
names(SSdata)[names(SSdata) == "Q238"] <- "STAI_11_Baseline_study"
names(SSdata)[names(SSdata) == "Q239"] <- "STAI_12_Baseline_study"
names(SSdata)[names(SSdata) == "Q240"] <- "STAI_13_Baseline_study"
names(SSdata)[names(SSdata) == "Q241"] <- "STAI_14_Baseline_study"
names(SSdata)[names(SSdata) == "Q242"] <- "STAI_15_Baseline_study"
names(SSdata)[names(SSdata) == "Q243"] <- "STAI_16_Baseline_study"
names(SSdata)[names(SSdata) == "Q244"] <- "STAI_17_Baseline_study"
names(SSdata)[names(SSdata) == "Q245"] <- "STAI_18_Baseline_study"
names(SSdata)[names(SSdata) == "Q246"] <- "STAI_19_Baseline_study"
names(SSdata)[names(SSdata) == "Q247"] <- "STAI_20_Baseline_study"
names(SSdata)[names(SSdata) == "Q250"] <- "RA_Select_Cocoon"
names(SSdata)[names(SSdata) == "Q156_1"] <- "SUDS_Test_study"
names(SSdata)[names(SSdata) == "Q251"] <- "RA_Select_Bear"
names(SSdata)[names(SSdata) == "Q248_1"] <- "SUDS_PreExam1_study"
names(SSdata)[names(SSdata) == "Q162"] <- "STAI_1_Exam1_study"
names(SSdata)[names(SSdata) == "Q164"] <- "STAI_2_Exam1_study"
names(SSdata)[names(SSdata) == "Q166"] <- "STAI_3_Exam1_study"
names(SSdata)[names(SSdata) == "Q168"] <- "STAI_4_Exam1_study"
names(SSdata)[names(SSdata) == "Q170"] <- "STAI_5_Exam1_study"
names(SSdata)[names(SSdata) == "Q172"] <- "STAI_6_Exam1_study"
names(SSdata)[names(SSdata) == "Q174"] <- "STAI_7_Exam1_study"
names(SSdata)[names(SSdata) == "Q176"] <- "STAI_8_Exam1_study"
names(SSdata)[names(SSdata) == "Q178"] <- "STAI_9_Exam1_study"
names(SSdata)[names(SSdata) == "Q180"] <- "STAI_10_Exam1_study"
names(SSdata)[names(SSdata) == "Q182"] <- "STAI_11_Exam1_study"
names(SSdata)[names(SSdata) == "Q184"] <- "STAI_12_Exam1_study"
names(SSdata)[names(SSdata) == "Q186"] <- "STAI_13_Exam1_study"
names(SSdata)[names(SSdata) == "Q188"] <- "STAI_14_Exam1_study"
names(SSdata)[names(SSdata) == "Q190"] <- "STAI_15_Exam1_study"
names(SSdata)[names(SSdata) == "Q192"] <- "STAI_16_Exam1_study"
names(SSdata)[names(SSdata) == "Q194"] <- "STAI_17_Exam1_study"
names(SSdata)[names(SSdata) == "Q196"] <- "STAI_18_Exam1_study"
names(SSdata)[names(SSdata) == "Q198"] <- "STAI_19_Exam1_study"
names(SSdata)[names(SSdata) == "Q200"] <- "STAI_20_Exam1_study"
names(SSdata)[names(SSdata) == "Q252"] <- "RA_Select_Sand"
names(SSdata)[names(SSdata) == "Q204_1"] <- "SUDS_PostExam1_study"
names(SSdata)[names(SSdata) == "Q206_1"] <- "Exam1_Stress_Level"
names(SSdata)[names(SSdata) == "Q208"] <- "Exam1_Stress_Occurance"
names(SSdata)[names(SSdata) == "Q210"] <- "Exam1_Recommendation"
names(SSdata)[names(SSdata) == "Q253"] <- "RA_Select_Shoe"
names(SSdata)[names(SSdata) == "Q214_1"] <- "SUDS_PreExam2_study"
names(SSdata)[names(SSdata) == "Q218"] <- "STAI_1_Exam2_study"
names(SSdata)[names(SSdata) == "Q220"] <- "STAI_2_Exam2_study"
names(SSdata)[names(SSdata) == "Q222"] <- "STAI_3_Exam2_study"
names(SSdata)[names(SSdata) == "Q224"] <- "STAI_4_Exam2_study"
names(SSdata)[names(SSdata) == "Q226.1"] <- "STAI_5_Exam2_study"
names(SSdata)[names(SSdata) == "Q228.1"] <- "STAI_6_Exam2_study"
names(SSdata)[names(SSdata) == "Q230.1"] <- "STAI_7_Exam2_study"
names(SSdata)[names(SSdata) == "Q232.1"] <- "STAI_8_Exam2_study"
names(SSdata)[names(SSdata) == "Q234.1"] <- "STAI_9_Exam2_study"
names(SSdata)[names(SSdata) == "Q236.1"] <- "STAI_10_Exam2_study"
names(SSdata)[names(SSdata) == "Q238.1"] <- "STAI_11_Exam2_study"
names(SSdata)[names(SSdata) == "Q240.1"] <- "STAI_12_Exam2_study"
names(SSdata)[names(SSdata) == "Q242.1"] <- "STAI_13_Exam2_study"
names(SSdata)[names(SSdata) == "Q244.1"] <- "STAI_14_Exam2_study"
names(SSdata)[names(SSdata) == "Q246.1"] <- "STAI_15_Exam2_study"
names(SSdata)[names(SSdata) == "Q248"] <- "STAI_16_Exam2_study"
names(SSdata)[names(SSdata) == "Q250.1"] <- "STAI_17_Exam2_study"
names(SSdata)[names(SSdata) == "Q252.1"] <- "STAI_18_Exam2_study"
names(SSdata)[names(SSdata) == "Q254"] <- "STAI_19_Exam2_study"
names(SSdata)[names(SSdata) == "Q256"] <- "STAI_20_Exam2_study"
names(SSdata)[names(SSdata) == "Q254.1"] <- "RA_Select_Panama"
names(SSdata)[names(SSdata) == "Q260_1"] <- "SUDS_PostExam2_study"
names(SSdata)[names(SSdata) == "Q262_1"] <- "Exam2_Stress_Level"
names(SSdata)[names(SSdata) == "Q264"] <- "Exam2_Stress_Occurance"
names(SSdata)[names(SSdata) == "Q266"] <- "Exam2_Recommendation"
names(SSdata)[names(SSdata) == "Q255"] <- "RA_Select_Smoothies"
names(SSdata)[names(SSdata) == "Q270"] <- "IMS_EMS_1"
names(SSdata)[names(SSdata) == "Q272"] <- "IMS_EMS_2"
names(SSdata)[names(SSdata) == "Q274"] <- "IMS_EMS_3"
names(SSdata)[names(SSdata) == "Q276"] <- "IMS_EMS_5"
names(SSdata)[names(SSdata) == "Q278"] <- "IMS_EMS_3.0"
names(SSdata)[names(SSdata) == "Q280"] <- "IMS_EMS_6"
names(SSdata)[names(SSdata) == "Q282"] <- "IMS_EMS_7"
names(SSdata)[names(SSdata) == "Q284"] <- "IMS_EMS_8"
names(SSdata)[names(SSdata) == "Q286"] <- "IMS_EMS_9"
names(SSdata)[names(SSdata) == "Q288"] <- "IMS_EMS_10"
names(SSdata)[names(SSdata) == "Q256.1"] <- "RA_Select_Cat"
names(SSdata)[names(SSdata) == "Q221_Id"] <- "File_ID"
names(SSdata)[names(SSdata) == "Q221_Name"] <- "File_Name"
names(SSdata)[names(SSdata) == "Q221_Size"] <- "File_Size"
names(SSdata)[names(SSdata) == "Q221_Type"] <- "File_Type"

#Convert columns to uppercase

SSdata$Response_ID <- toupper(SSdata$Response_ID)
SSdata$Study_ID_Q1 <- toupper(SSdata$Study_ID_Q1)
SSdata$Study_ID_Q2 <- toupper(SSdata$Study_ID_Q2)
SSdata$Study_ID_Q3 <- toupper(SSdata$Study_ID_Q3)
SSdata$Study_ID_Q4 <- toupper(SSdata$Study_ID_Q4)

#Add 0 in front of single digits
#Question 2
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '4'] <- '04'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '1'] <- '01'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '2'] <- '02'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '3'] <- '03'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '5'] <- '05'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '6'] <- '06'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '7'] <- '07'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '8'] <- '08'
SSdata$Study_ID_Q2[SSdata$Study_ID_Q2 == '9'] <- '09'
#Question 3
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '4'] <- '04'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '1'] <- '01'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '2'] <- '02'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '3'] <- '03'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '5'] <- '05'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '6'] <- '06'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '7'] <- '07'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '8'] <- '08'
SSdata$Study_ID_Q3[SSdata$Study_ID_Q3 == '9'] <- '09'

#combine Study Id Qs
SSdata$Study_ID = paste(SSdata$Study_ID_Q1, SSdata$Study_ID_Q2, SSdata$Study_ID_Q3, SSdata$Study_ID_Q4, sep="")

#delete columns
SSdata <- subset(SSdata, select = -c(Start_Date, End_Date, Response_Type, Finished, Progress, Distribution_Channel, User_Language))
SSdata <- subset(SSdata, select = -c(File_ID, File_Name, File_Size, File_Type, Informed_Consent, Response_ID, Duration_Seconds, Study_ID_Summary))
SSdata <- subset(SSdata, select = -c(RA_Select_Cat, RA_Select_Panama, RA_Select_Smoothies, RA_Select_Shoe, RA_Select_Bear, RA_Select_Sand, RA_Select_Cocoon))

#delete test and blank rows******
SSdata <- subset(SSdata, select = -c(1,2))

#relocate Study_ID column 
SSdata <- select(SSdata, Study_ID, everything())

#write csv
write.csv(StudySurveydata,"StudySurveydata.csv")

