#Data cleaning for prescreen survey 

#Setting working directory 
prescreen_survey <- read.csv("~/tmp/Dissertation/prescreen_survey.csv", header=FALSE)

#Change the column names 
names(prescreen_survey)[names(prescreen_survey) =="V1"] <- "Start_Date"
names(prescreen_survey)[names(prescreen_survey) =="V2"] <- "End_Date"
names(prescreen_survey)[names(prescreen_survey) =="V3"] <- "Response_Type"
names(prescreen_survey)[names(prescreen_survey) =="V4"] <- "Progress"
names(prescreen_survey)[names(prescreen_survey) =="V5"] <- "Duration_Seconds"
names(prescreen_survey)[names(prescreen_survey) =="V6"] <- "Finished"
names(prescreen_survey)[names(prescreen_survey) =="V7"] <- "Recorded_Date"
names(prescreen_survey)[names(prescreen_survey) =="V8"] <- "Response_ID"
names(prescreen_survey)[names(prescreen_survey) =="V9"] <- "Distribution_Channel"
names(prescreen_survey)[names(prescreen_survey) =="V10"] <- "User_Language"
names(prescreen_survey)[names(prescreen_survey) =="V11"] <- "Consent_Agreement"
names(prescreen_survey)[names(prescreen_survey) =="V12"] <- "Medical_student_pre"                      
names(prescreen_survey)[names(prescreen_survey) =="V13"] <- "Medical_year_pre"
names(prescreen_survey)[names(prescreen_survey) =="V14"] <- "Student_age_pre"
names(prescreen_survey)[names(prescreen_survey) =="V15"] <- "Height_pre"
names(prescreen_survey)[names(prescreen_survey) =="V16"] <- "Weight_pounds_pre"
names(prescreen_survey)[names(prescreen_survey) =="V17"] <- "Sex_assigned_pre"
names(prescreen_survey)[names(prescreen_survey) =="V18"] <- "Gender_identity_Q1"
names(prescreen_survey)[names(prescreen_survey) =="V19"] <- "Gender_identity_Q2"
names(prescreen_survey)[names(prescreen_survey) =="V20"] <- "Sexual_orientation_Q1"
names(prescreen_survey)[names(prescreen_survey) =="V21"] <- "Sexual_orientation_Q2"
names(prescreen_survey)[names(prescreen_survey) =="V22"] <- "Racial_Ethnic_identity_Q1"
names(prescreen_survey)[names(prescreen_survey) =="V23"] <- "Racial_Ethnic_identity_Q2"
names(prescreen_survey)[names(prescreen_survey) =="V24"] <- "Primary_language_Q1"
names(prescreen_survey)[names(prescreen_survey) =="V25"] <- "Primary_language_Q2"
names(prescreen_survey)[names(prescreen_survey) =="V26"] <- "Previous_telehealth_study_pre"
names(prescreen_survey)[names(prescreen_survey) =="V27"] <- "Prior_experience_pre"
names(prescreen_survey)[names(prescreen_survey) =="V29"] <- "Personal_ID_Q1"
names(prescreen_survey)[names(prescreen_survey) =="V30"] <- "Personal_ID_Q2"
names(prescreen_survey)[names(prescreen_survey) =="V31"] <- "Personal_ID_Q3"
names(prescreen_survey)[names(prescreen_survey) =="V32"] <- "Personal_ID_Q4"
names(prescreen_survey)[names(prescreen_survey) == "V33"] <- "SDS_1_pre"
names(prescreen_survey)[names(prescreen_survey) == "V34"] <- "SDS_2_pre"
names(prescreen_survey)[names(prescreen_survey) == "V35"] <- "SDS_3_pre"
names(prescreen_survey)[names(prescreen_survey) == "V36"] <- "SDS_4_pre"
names(prescreen_survey)[names(prescreen_survey) == "V37"] <- "SDS_5_pre"
names(prescreen_survey)[names(prescreen_survey) == "V38"] <- "SDS_6_pre"
names(prescreen_survey)[names(prescreen_survey) == "V39"] <- "SDS_7_pre"
names(prescreen_survey)[names(prescreen_survey) == "V40"] <- "SDS_8_pre"
names(prescreen_survey)[names(prescreen_survey) == "V41"] <- "SDS_9_pre"
names(prescreen_survey)[names(prescreen_survey) == "V42"] <- "SDS_10_pre"
names(prescreen_survey)[names(prescreen_survey) == "V43"] <- "SDS_11_pre"
names(prescreen_survey)[names(prescreen_survey) == "V44"] <- "SDS_12_pre"
names(prescreen_survey)[names(prescreen_survey) == "V45"] <- "SDS_13_pre"
names(prescreen_survey)[names(prescreen_survey) == "V46"] <- "STAI_trait_1_pre"
names(prescreen_survey)[names(prescreen_survey) == "V47"] <- "STAI_trait_2_pre"
names(prescreen_survey)[names(prescreen_survey) == "V48"] <- "STAI_trait_3_pre"
names(prescreen_survey)[names(prescreen_survey) == "V49"] <- "STAI_trait_4_pre"
names(prescreen_survey)[names(prescreen_survey) == "V50"] <- "STAI_trait_5_pre"
names(prescreen_survey)[names(prescreen_survey) == "V51"] <- "STAI_trait_6_pre"
names(prescreen_survey)[names(prescreen_survey) == "V52"] <- "STAI_trait_7_pre"
names(prescreen_survey)[names(prescreen_survey) == "V53"] <- "STAI_trait_8_pre"
names(prescreen_survey)[names(prescreen_survey) == "V54"] <- "STAI_trait_9_pre"
names(prescreen_survey)[names(prescreen_survey) == "V55"] <- "STAI_trait_10_pre"
names(prescreen_survey)[names(prescreen_survey) == "V56"] <- "STAI_trait_11_pre"
names(prescreen_survey)[names(prescreen_survey) == "V57"] <- "STAI_trait_12_pre"
names(prescreen_survey)[names(prescreen_survey) == "V58"] <- "STAI_trait_13_pre"
names(prescreen_survey)[names(prescreen_survey) == "V59"] <- "STAI_trait_14_pre"
names(prescreen_survey)[names(prescreen_survey) == "V60"] <- "STAI_trait_15_pre"
names(prescreen_survey)[names(prescreen_survey) == "v61"] <- "STAI_trait_16_pre"
names(prescreen_survey)[names(prescreen_survey) == "V62"] <- "STAI_trait_17_pre"
names(prescreen_survey)[names(prescreen_survey) == "V63"] <- "STAI_trait_18_pre"
names(prescreen_survey)[names(prescreen_survey) == "V64"] <- "STAI_trait_19_pre"
names(prescreen_survey)[names(prescreen_survey) == "V65"] <- "STAI_trait_20_pre"
names(prescreen_survey)[names(prescreen_survey) == "V66"] <- "STAI_trait_21_pre"
names(prescreen_survey)[names(prescreen_survey) == "V67"] <- "STAI_trait_22_pre"
names(prescreen_survey)[names(prescreen_survey) == "V68"] <- "STAI_trait_23_pre"
names(prescreen_survey)[names(prescreen_survey) == "V69"] <- "STAI_trait_24_pre"
names(prescreen_survey)[names(prescreen_survey) == "V70"] <- "STAI_trait_25_pre"
names(prescreen_survey)[names(prescreen_survey) == "V71"] <- "STAI_trait_26_pre"
names(prescreen_survey)[names(prescreen_survey) == "V72"] <- "STAI_trait_27_pre"
names(prescreen_survey)[names(prescreen_survey) == "V73"] <- "STAI_trait_28_pre"
names(prescreen_survey)[names(prescreen_survey) == "V74"] <- "STAI_trait_29_pre"
names(prescreen_survey)[names(prescreen_survey) == "V75"] <- "STAI_trait_30_pre"
names(prescreen_survey)[names(prescreen_survey) == "V76"] <- "STAI_trait_31_pre"
names(prescreen_survey)[names(prescreen_survey) == "V77"] <- "STAI_trait_32_pre"
names(prescreen_survey)[names(prescreen_survey) == "V78"] <- "STAI_trait_33_pre"
names(prescreen_survey)[names(prescreen_survey) == "V79"] <- "STAI_trait_34_pre"
names(prescreen_survey)[names(prescreen_survey) == "V61"] <- "STAI_trait_16_pre"

#Convert variables in specific columns to uppercase 
prescreen_survey$Personal_ID_Q1 <- toupper(prescreen_survey$Personal_ID_Q1)
prescreen_survey$Personal_ID_Q2 <- toupper(prescreen_survey$Personal_ID_Q2)
prescreen_survey$Personal_ID_Q3 <- toupper(prescreen_survey$Personal_ID_Q3)
prescreen_survey$Personal_ID_Q4 <- toupper(prescreen_survey$Personal_ID_Q4)

#Combine columns into one if needed 
prescreen_survey$Personal_ID_pre = paste(prescreen_survey$Personal_ID_Q1, prescreen_survey$Personal_ID_Q2, prescreen_survey$Personal_ID_Q3, prescreen_survey$Personal_ID_Q4, sep="")
prescreen_survey$Gender_identity_pre = paste(prescreen_survey$Gender_identity_Q1, prescreen_survey$Gender_identity_Q2, sep="")
prescreen_survey$Sexual_orientation_pre = paste(prescreen_survey$Sexual_orientation_Q1, prescreen_survey$Sexual_orientation_Q2, sep="")
prescreen_survey$Racial_Ethnic_identity_pre = paste(prescreen_survey$Racial_Ethnic_identity_Q1, prescreen_survey$Sexual_orientation_Q2, sep="")
prescreen_survey$Primary_language_pre = paste(prescreen_survey$Primary_language_Q1, prescreen_survey$Primary_language_Q2, sep="")

#Delete columns that are not needed in dataset
prescreen_survey <- subset(prescreen_survey, select = -c(V28))
prescreen_survey <- subset(prescreen_survey, select = -c(Sexual_orientation_Q1, Sexual_orientation_Q2))
prescreen_survey <- subset(prescreen_survey, select = -c(Gender_identity_Q1, Gender_identity_Q2))
prescreen_survey <- subset(prescreen_survey, select = -c(Racial_Ethnic_identity_Q1, Racial_Ethnic_identity_Q2))
prescreen_survey <- subset(prescreen_survey, select = -c(Primary_language_Q1, Primary_language_Q2))
prescreen_survey <- subset(prescreen_survey, select = -c(Start_Date, End_Date))
prescreen_survey <- subset(prescreen_survey, select = -c(Response_Type, Progress, Duration_Seconds))
prescreen_survey <- subset(prescreen_survey, select = -c(Finished, Recorded_Date, Response_ID))
prescreen_survey <- subset(prescreen_survey, select = -c(Distribution_Channel, User_Language))
prescreen_survey <- subset(prescreen_survey, select = -c(Personal_ID_Q1, Personal_ID_Q2, Personal_ID_Q3, Personal_ID_Q4))

