#set working directory
# Or ~/Desktop/Code it Up/
setwd("/Users/admin/Desktop/Code it Up/")

#readr package
library (readr)

#import data and recognize as data3
data3 <-read.csv("StudySurvey.csv", header = TRUE, sep = ",")

#Rename Columns 
names(data3)[names(data3) == "StartDate"] <- "Start_Date"
names(data3)[names(data3) == "EndDate"] <- "End_Date"
names(data3)[names(data3) == "Status"] <- "Response_Type"
names(data3)[names(data3) == "Duration..in.seconds."] <- "Duration_Seconds"
names(data3)[names(data3) == "RecordedDate"] <- "Recorded_Date"
names(data3)[names(data3) == "ResponseId"] <- "Response_ID"
names(data3)[names(data3) == "DistributionChannel"] <- "Distribution_Channel"
names(data3)[names(data3) == "UserLanguage"] <- "User_Language"
names(data3)[names(data3) == "Q150"] <- "Informed_Consent"
names(data3)[names(data3) == "Q85"] <- "Study_ID_Summary"
names(data3)[names(data3) == "Q85_1_TEXT"] <- "Study_ID_Q1"
names(data3)[names(data3) == "Q85_2_TEXT"] <- "Study_ID_Q2"
names(data3)[names(data3) == "Q85_3_TEXT"] <- "Study_ID_Q3"
names(data3)[names(data3) == "Q85_4_TEXT"] <- "Study_ID_Q4"
names(data3)[names(data3) == "Q226"] <- "Medical_Year_study"
names(data3)[names(data3) == "Q154_1"] <- "SUDS_Baseline_study"
names(data3)[names(data3) == "Q228"] <- "STAI_1_Baseline_study"
names(data3)[names(data3) == "Q229"] <- "STAI_2_Baseline_study"
names(data3)[names(data3) == "Q230"] <- "STAI_3_Baseline_study"
names(data3)[names(data3) == "Q231"] <- "STAI_4_Baseline_study"
names(data3)[names(data3) == "Q232"] <- "STAI_5_Baseline_study"
names(data3)[names(data3) == "Q233"] <- "STAI_6_Baseline_study"
names(data3)[names(data3) == "Q234"] <- "STAI_7_Baseline_study"
names(data3)[names(data3) == "Q235"] <- "STAI_8_Baseline_study"
names(data3)[names(data3) == "Q236"] <- "STAI_9_Baseline_study"
names(data3)[names(data3) == "Q237"] <- "STAI_10_Baseline_study"
names(data3)[names(data3) == "Q238"] <- "STAI_11_Baseline_study"
names(data3)[names(data3) == "Q239"] <- "STAI_12_Baseline_study"
names(data3)[names(data3) == "Q240"] <- "STAI_13_Baseline_study"
names(data3)[names(data3) == "Q241"] <- "STAI_14_Baseline_study"
names(data3)[names(data3) == "Q242"] <- "STAI_15_Baseline_study"
names(data3)[names(data3) == "Q243"] <- "STAI_16_Baseline_study"
names(data3)[names(data3) == "Q244"] <- "STAI_17_Baseline_study"
names(data3)[names(data3) == "Q245"] <- "STAI_18_Baseline_study"
names(data3)[names(data3) == "Q246"] <- "STAI_19_Baseline_study"
names(data3)[names(data3) == "Q247"] <- "STAI_20_Baseline_study"
names(data3)[names(data3) == "Q250"] <- "RA_Select_Cocoon"
names(data3)[names(data3) == "Q156_1"] <- "SUDS_Test_study"
names(data3)[names(data3) == "Q251"] <- "RA_Select_Bear"
names(data3)[names(data3) == "Q248_1"] <- "SUDS_PreExam1_study"
names(data3)[names(data3) == "Q162"] <- "STAI_1_Exam1_study"
names(data3)[names(data3) == "Q164"] <- "STAI_2_Exam1_study"
names(data3)[names(data3) == "Q166"] <- "STAI_3_Exam1_study"
names(data3)[names(data3) == "Q168"] <- "STAI_4_Exam1_study"
names(data3)[names(data3) == "Q170"] <- "STAI_5_Exam1_study"
names(data3)[names(data3) == "Q172"] <- "STAI_6_Exam1_study"
names(data3)[names(data3) == "Q174"] <- "STAI_7_Exam1_study"
names(data3)[names(data3) == "Q176"] <- "STAI_8_Exam1_study"
names(data3)[names(data3) == "Q178"] <- "STAI_9_Exam1_study"
names(data3)[names(data3) == "Q180"] <- "STAI_10_Exam1_study"
names(data3)[names(data3) == "Q182"] <- "STAI_11_Exam1_study"
names(data3)[names(data3) == "Q184"] <- "STAI_12_Exam1_study"
names(data3)[names(data3) == "Q186"] <- "STAI_13_Exam1_study"
names(data3)[names(data3) == "Q188"] <- "STAI_14_Exam1_study"
names(data3)[names(data3) == "Q190"] <- "STAI_15_Exam1_study"
names(data3)[names(data3) == "Q192"] <- "STAI_16_Exam1_study"
names(data3)[names(data3) == "Q194"] <- "STAI_17_Exam1_study"
names(data3)[names(data3) == "Q196"] <- "STAI_18_Exam1_study"
names(data3)[names(data3) == "Q198"] <- "STAI_19_Exam1_study"
names(data3)[names(data3) == "Q200"] <- "STAI_20_Exam1_study"
names(data3)[names(data3) == "Q252"] <- "RA_Select_Sand"
names(data3)[names(data3) == "Q204_1"] <- "SUDS_PostExam1_study"
names(data3)[names(data3) == "Q206_1"] <- "Exam1_Stress_Level"
names(data3)[names(data3) == "Q208"] <- "Exam1_Stress_Occurance"
names(data3)[names(data3) == "Q210"] <- "Exam1_Recommendation"
names(data3)[names(data3) == "Q253"] <- "RA_Select_Shoe"
names(data3)[names(data3) == "Q214_1"] <- "SUDS_PreExam2_study"
names(data3)[names(data3) == "Q218"] <- "STAI_1_Exam2_study"
names(data3)[names(data3) == "Q220"] <- "STAI_2_Exam2_study"
names(data3)[names(data3) == "Q222"] <- "STAI_3_Exam2_study"
names(data3)[names(data3) == "Q224"] <- "STAI_4_Exam2_study"
names(data3)[names(data3) == "Q226.1"] <- "STAI_5_Exam2_study"
names(data3)[names(data3) == "Q228.1"] <- "STAI_6_Exam2_study"
names(data3)[names(data3) == "Q230.1"] <- "STAI_7_Exam2_study"
names(data3)[names(data3) == "Q232.1"] <- "STAI_8_Exam2_study"
names(data3)[names(data3) == "Q234.1"] <- "STAI_9_Exam2_study"
names(data3)[names(data3) == "Q236.1"] <- "STAI_10_Exam2_study"
names(data3)[names(data3) == "Q238.1"] <- "STAI_11_Exam2_study"
names(data3)[names(data3) == "Q240.1"] <- "STAI_12_Exam2_study"
names(data3)[names(data3) == "Q242.1"] <- "STAI_13_Exam2_study"
names(data3)[names(data3) == "Q244.1"] <- "STAI_14_Exam2_study"
names(data3)[names(data3) == "Q246.1"] <- "STAI_15_Exam2_study"
names(data3)[names(data3) == "Q248"] <- "STAI_16_Exam2_study"
names(data3)[names(data3) == "Q250.1"] <- "STAI_17_Exam2_study"
names(data3)[names(data3) == "Q252.1"] <- "STAI_18_Exam2_study"
names(data3)[names(data3) == "Q254"] <- "STAI_19_Exam2_study"
names(data3)[names(data3) == "Q256"] <- "STAI_20_Exam2_study"
names(data3)[names(data3) == "Q254.1"] <- "RA_Select_Panama"
names(data3)[names(data3) == "Q260_1"] <- "SUDS_PostExam2_study"
names(data3)[names(data3) == "Q262_1"] <- "Exam2_Stress_Level"
names(data3)[names(data3) == "Q264"] <- "Exam2_Stress_Occurance"
names(data3)[names(data3) == "Q266"] <- "Exam2_Recommendation"
names(data3)[names(data3) == "Q255"] <- "RA_Select_Smoothies"
names(data3)[names(data3) == "Q270"] <- "IMS_EMS_1"
names(data3)[names(data3) == "Q272"] <- "IMS_EMS_2"
names(data3)[names(data3) == "Q274"] <- "IMS_EMS_3"
names(data3)[names(data3) == "Q276"] <- "IMS_EMS_5"
names(data3)[names(data3) == "Q278"] <- "IMS_EMS_3.0"
names(data3)[names(data3) == "Q280"] <- "IMS_EMS_6"
names(data3)[names(data3) == "Q282"] <- "IMS_EMS_7"
names(data3)[names(data3) == "Q284"] <- "IMS_EMS_8"
names(data3)[names(data3) == "Q286"] <- "IMS_EMS_9"
names(data3)[names(data3) == "Q288"] <- "IMS_EMS_10"
names(data3)[names(data3) == "Q256.1"] <- "RA_Select_Cat"
names(data3)[names(data3) == "Q221_Id"] <- "File_ID"
names(data3)[names(data3) == "Q221_Name"] <- "File_Name"
names(data3)[names(data3) == "Q221_Size"] <- "File_Size"
names(data3)[names(data3) == "Q221_Type"] <- "File_Type"

#Convert columns to uppercase

data3$Response_ID <- toupper(data3$Response_ID)
data3$Study_ID_Q1 <- toupper(data3$Study_ID_Q1)
data3$Study_ID_Q2 <- toupper(data3$Study_ID_Q2)
data3$Study_ID_Q3 <- toupper(data3$Study_ID_Q3)
data3$Study_ID_Q4 <- toupper(data3$Study_ID_Q4)

#Add 0 in front of single digits
#Question 2
data3$Study_ID_Q2[data3$Study_ID_Q2 == '4'] <- '04'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '1'] <- '01'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '2'] <- '02'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '3'] <- '03'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '5'] <- '05'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '6'] <- '06'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '7'] <- '07'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '8'] <- '08'
data3$Study_ID_Q2[data3$Study_ID_Q2 == '9'] <- '09'
#Question 3
data3$Study_ID_Q3[data3$Study_ID_Q3 == '4'] <- '04'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '1'] <- '01'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '2'] <- '02'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '3'] <- '03'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '5'] <- '05'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '6'] <- '06'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '7'] <- '07'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '8'] <- '08'
data3$Study_ID_Q3[data3$Study_ID_Q3 == '9'] <- '09'

#combine Study Id Qs
data3$Study_ID = paste(data3$Study_ID_Q1, data3$Study_ID_Q2, data3$Study_ID_Q3, data3$Study_ID_Q4, sep="")

#delete columns
data3 <- subset(data3, select = -c(Start_Date, End_Date, Response_Type, Finished, Progress, Distribution_Channel, User_Language))
data3 <- subset(data3, select = -c(File_ID, File_Name, File_Size, File_Type))

