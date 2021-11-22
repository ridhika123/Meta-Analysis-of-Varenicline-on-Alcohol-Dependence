library(metafor)

#############################################################################################
#HeavyDrinkData
data = heavyDrinkData[-c(1,2),] #Without Plebani

treatment_seeking_drinking <- c(0, 0, 
                                84, 84, 
                                NA, NA, 
                                100, 100, 
                                NA, NA, 
                                0, 0)
data$newcolumn <- treatment_seeking_drinking
colnames(data)[colnames(data)=="newcolumn"] <- "treatment_seeking_drinking"

treatment_seeking_smoking <- c(100, 100, 
                               0, 0, 
                               100, 100, 
                               0, 0, 
                               NA, NA, 
                               0, 0)
data$newcolumn <- treatment_seeking_smoking
colnames(data)[colnames(data)=="newcolumn"] <- "treatment_seeking_smoking"

m1i = data$PHDD_post[data$drug == "VAR2mg"]
m2i = data$PHDD_post[data$drug == "PBO"]

sd1i = data$PHDD_postSD[data$drug == "VAR2mg"]
sd2i = data$PHDD_postSD[data$drug == "PBO"]

n1i = data$sample_size[data$drug == "VAR2mg"]
n2i = data$sample_size[data$drug == "PBO"]

mod_age = (((data$age[data$drug == "VAR2mg"] * data$sample_size[data$drug == "VAR2mg"])
        + (data$age[data$drug == "PBO"] * data$sample_size[data$drug == "PBO"])) 
        / (data$sample_size[data$drug == "VAR2mg"] + data$sample_size[data$drug == "PBO"]))

mod_gender = (((data$gender[data$drug == "VAR2mg"] * data$sample_size[data$drug == "VAR2mg"])
         + (data$gender[data$drug == "PBO"] * data$sample_size[data$drug == "PBO"])) 
        / (data$sample_size[data$drug == "VAR2mg"] + data$sample_size[data$drug == "PBO"]))

mod_region = (data$region[data$drug == "PBO"])

mod_cigs = (((data$cigs_per_day[data$drug == "VAR2mg"] * data$sample_size[data$drug == "VAR2mg"])
        + (data$cigs_per_day[data$drug == "PBO"] * data$sample_size[data$drug == "PBO"])) 
        / (data$sample_size[data$drug == "VAR2mg"] + data$sample_size[data$drug == "PBO"]))

mod_pfizer = (data$pfizer_funding[data$drug == "PBO"])

mod_duration = (data$duration[data$drug == "PBO"])

mod_daily_smokers = (((data$daily_smokers[data$drug == "VAR2mg"] * data$sample_size[data$drug == "VAR2mg"])
                      + (data$daily_smokers[data$drug == "PBO"] * data$sample_size[data$drug == "PBO"])) 
                     / (data$sample_size[data$drug == "VAR2mg"] + data$sample_size[data$drug == "PBO"]))

mod_treatment_seeking_drinking= (data$treatment_seeking_drinking[data$drug == "PBO"])

mod_treatment_seeking_smoking= (data$treatment_seeking_smoking[data$drug == "PBO"])

dat1 <- escalc(measure = "MD", m1i = m1i, sd1i = sd1i, n1i = n1i,
                               m2i = m2i, sd2i = sd2i, n2i = n2i)

res1 <- rma(yi, vi, data = dat1, method = "EB")
res1.age <- rma(yi, vi, data = dat1, mods = mod_age, method = "EB")
res1.gender <- rma(yi, vi, data = dat1, mods = mod_gender, method = "EB")
res1.region <- rma(yi, vi, data = dat1, mods = mod_region, method = "EB")
res1.cigs <- rma(yi, vi, data = dat1, mods = mod_cigs, method = "EB")
res1.pfizer <- rma(yi, vi, data = dat1, mods = mod_pfizer, method = "EB")
res1.duration <- rma(yi, vi, data = dat1, mods = mod_duration, method = "EB")
res1.smokers <- rma(yi, vi, data = dat1, mods = mod_daily_smokers, method = "EB")
res1.treatment <- rma(yi, vi, data = dat1, mods = mod_treatment_seeking_drinking, method = "EB")
res1.treatmentsmoking <- rma(yi, vi, data = dat1, mods = mod_treatment_seeking_smoking, method = "EB")

dat2 <- escalc(measure = "SMD", m1i = m1i, sd1i = sd1i, n1i = n1i,
               m2i = m2i, sd2i = sd2i, n2i = n2i)

res2 <- rma(yi, vi, data = dat2, method = "EB")
res2.age <- rma(yi, vi, data = dat2, mods = mod_age, method = "EB")
res2.gender <- rma(yi, vi, data = dat2, mods = mod_gender, method = "EB")
res2.region <- rma(yi, vi, data = dat2, mods = mod_region, method = "EB")
res2.cigs <- rma(yi, vi, data = dat2, mods = mod_cigs, method = "EB")
res2.pfizer <- rma(yi, vi, data = dat2, mods = mod_pfizer, method = "EB")
res2.duration <- rma(yi, vi, data = dat2, mods = mod_duration, method = "EB")
res2.smokers <- rma(yi, vi, data = dat2, mods = mod_daily_smokers, method = "EB")
res2.treatment <- rma(yi, vi, data = dat2, mods = mod_treatment_seeking_drinking, method = "EB")
res2.treatmentsmoking <- rma(yi, vi, data = dat2, mods = mod_treatment_seeking_smoking, method = "EB")

#############################################################################################
#Adverse Events

Adverse_Events_count_Data_1_ <- read_excel("Adverse Events (count) Data (2).xlsx")
Adverse_Events_count_Data_2_ <- read_excel("Adverse Events (%) Data.xlsx")
data2 = Adverse_Events_count_Data_2_

pfizer_funding2<- c(1, 1, 
                    1, 1, 
                    0, 0, 
                    1, 1,
                    1, 1, 
                    1, 1, 
                    1, 1, 
                    0, 0, 
                    1, 1, 
                    1, 1)
data2$newcolumn <- pfizer_funding2
colnames(data2)[colnames(data2)=="newcolumn"] <- "pfizer_funding2"


mod_duration2 = (Adverse_Events_count_Data_1_$Duration[Adverse_Events_count_Data_1_$Drug == "PBO"])

mod_funding2 = (data2$pfizer_funding2[data2$Drug == "PBO"])

mod_age2 = (((Adverse_Events_count_Data_2_$Age[Adverse_Events_count_Data_1_$Drug == "VAR"] * 
                Adverse_Events_count_Data_2_$Sample_Size[Adverse_Events_count_Data_1_$Drug == "VAR"])
            + (Adverse_Events_count_Data_2_$Age[Adverse_Events_count_Data_1_$Drug == "PBO"] * 
                 Adverse_Events_count_Data_2_$Sample_Size[Adverse_Events_count_Data_1_$Drug == "PBO"])) 
           / (Adverse_Events_count_Data_2_$Sample_Size[Adverse_Events_count_Data_1_$Drug == "VAR"] + 
                Adverse_Events_count_Data_2_$Sample_Size[Adverse_Events_count_Data_1_$Drug == "PBO"]))

mod_gender2 = (((data2$Gender[data2$Drug == "VAR"] * data2$Sample_Size[data2$Drug == "VAR"])
               + (data2$Gender[data2$Drug == "PBO"] * data2$Sample_Size[data2$Drug == "PBO"])) 
              / (data2$Sample_Size[data2$Drug == "VAR"] + data2$Sample_Size[data2$Drug == "PBO"]))

resAE_Nausea <- rma.glmm(measure = "OR",
                         ai=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                         bi=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                         ci=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                         di=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                         test = "t",
                         method = "ML") #p-value= 0.0011
resAE_Nausea_duration <- rma.glmm(measure = "OR",
                         ai=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                         bi=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                         ci=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                         di=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                         mods= mod_duration2,
                         test = "t",
                         method = "ML")
resAE_Nausea_age <- rma.glmm(measure = "OR",
                              ai=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                              bi=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                              ci=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                              di=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                              mods= mod_age2,
                              test = "t",
                              method = "ML")
resAE_Nausea_gender <- rma.glmm(measure = "OR",
                             ai=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                             bi=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                             ci=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                             di=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                             mods= mod_gender2,
                             test = "t",
                             method = "ML")
resAE_Nausea_funding <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_2_$Nausea_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_2_$Nausea_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                mods= mod_funding2,
                                test = "t",
                                method = "ML")

resAE_Fatigue <- rma.glmm(measure = "OR",
                          ai=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                          bi=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                          ci=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                          di=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                          test = "t",
                          method = "ML") #p-value= 0.2886
resAE_Fatigue_duration <- rma.glmm(measure = "OR",
                          ai=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                          bi=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                          ci=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                          di=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                          test = "t",
                          mods= mod_duration2,
                          method = "ML")
resAE_Fatigue_age <- rma.glmm(measure = "OR",
                                   ai=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                   bi=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                   ci=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                   di=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                   test = "t",
                                   mods= mod_age2,
                                   method = "ML")
resAE_Fatigue_gender <- rma.glmm(measure = "OR",
                                   ai=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                   bi=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                   ci=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                   di=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                   test = "t",
                                   mods= mod_gender2,
                                   method = "ML")
resAE_Fatigue_funding <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                 bi=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                 ci=Adverse_Events_count_Data_2_$Fatigue_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                 di=Adverse_Events_count_Data_2_$Fatigue_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                 test = "t",
                                 mods= mod_funding2,
                                 method = "ML")


resAE_Headache <- rma.glmm(measure = "OR",
                           ai=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                           bi=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                           ci=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                           di=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                           test = "t",
                           method = "ML") #p-value= 0.5609
resAE_Headache_duration <- rma.glmm(measure = "OR",
                           ai=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                           bi=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                           ci=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                           di=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                           test = "t",
                           mods= mod_duration2,
                           method = "ML")
resAE_Headache_age <- rma.glmm(measure = "OR",
                                    ai=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    bi=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    ci=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    di=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    test = "t",
                                    mods= mod_age2,
                                    method = "ML")
resAE_Headache_gender <- rma.glmm(measure = "OR",
                                    ai=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    bi=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    ci=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    di=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    test = "t",
                                    mods= mod_gender2,
                                    method = "ML")
resAE_Headache_funding <- rma.glmm(measure = "OR",
                                  ai=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                  bi=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                  ci=Adverse_Events_count_Data_2_$Headache_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                  di=Adverse_Events_count_Data_2_$Headache_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                  test = "t",
                                  mods= mod_funding2,
                                  method = "ML")

resAE_Nasopharyngitis <- rma.glmm(measure = "OR",
                                  ai=Adverse_Events_count_Data_2_$Nasopharyngitis_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                  bi=Adverse_Events_count_Data_2_$Nasopharyngitis_No[Adverse_Events_count_Data_2_$Drug == "VAR"],
                                  ci=Adverse_Events_count_Data_2_$Nasopharyngitis_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                  di=Adverse_Events_count_Data_2_$Nasopharyngitis_No[Adverse_Events_count_Data_2_$Drug == "PBO"],
                                  test = "t",
                                  method = "ML") #p-value= 0.5514

resAE_Nasopharyngitis_duration <- rma.glmm(measure = "OR",
                                  ai=Adverse_Events_count_Data_2_$Nasopharyngitis_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"],
                                  bi=Adverse_Events_count_Data_2_$Nasopharyngitis_No[Adverse_Events_count_Data_1_$Drug == "VAR"],
                                  ci=Adverse_Events_count_Data_2_$Nasopharyngitis_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"],
                                  di=Adverse_Events_count_Data_2_$Nasopharyngitis_No[Adverse_Events_count_Data_1_$Drug == "PBO"],
                                  test = "t",
                                  mods = mod_duration2,
                                  method = "ML")

resAE_AbnormalDreams <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                 bi=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                 ci=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                 di=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                 test = "t",
                                 method = "ML") #p-value= 0.0044
resAE_AbnormalDreams_duration <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                 bi=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                 ci=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                 di=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                 test = "t",
                                 mods= mod_duration2,
                                 method = "ML") 
resAE_AbnormalDreams_age <- rma.glmm(measure = "OR",
                                         ai=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                         bi=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                         ci=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                         di=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                         test = "t",
                                         mods= mod_age2,
                                         method = "ML") 
resAE_AbnormalDreams_gender <- rma.glmm(measure = "OR",
                                         ai=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                         bi=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                         ci=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                         di=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                         test = "t",
                                         mods= mod_gender2,
                                         method = "ML") 
resAE_AbnormalDreams_funding <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_2_$AbnormalDreams_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_2_$AbnormalDreams_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                mods= mod_funding2,
                                method = "ML") 


resAE_Constipation <- rma.glmm(measure = "OR",
                               ai=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               bi=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               ci=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               di=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               test = "t",
                               method = "ML") #p-value= 0.8951
resAE_Constipation_age <- rma.glmm(measure = "OR",
                               ai=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               bi=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               ci=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               di=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               test = "t",
                               mods= mod_age2,
                               method = "ML")
resAE_Constipation_gender <- rma.glmm(measure = "OR",
                               ai=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               bi=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                               ci=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               di=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                               test = "t",
                               mods= mod_gender2,
                               method = "ML")
resAE_Constipation_duration <- rma.glmm(measure = "OR",
                                      ai=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                      bi=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                      ci=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                      di=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                      test = "t",
                                      mods= mod_duration2,
                                      method = "ML")
resAE_Constipation_funding <- rma.glmm(measure = "OR",
                                      ai=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                      bi=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                      ci=Adverse_Events_count_Data_2_$Constipation_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                      di=Adverse_Events_count_Data_2_$Constipation_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                      test = "t",
                                      mods= mod_funding2,
                                      method = "ML")

resAE_Flatulence <- rma.glmm(measure = "OR",
                             ai=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                             bi=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                             ci=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                             di=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                             test = "t",
                             method = "ML") #p-value= 0.3903
resAE_Flatulence_age <- rma.glmm(measure = "OR",
                             ai=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                             bi=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                             ci=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                             di=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                             test = "t",
                             mods= mod_age2,
                             method = "ML")
resAE_Flatulence_gender <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 bi=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 ci=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 di=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 test = "t",
                                 mods= mod_gender2,
                                 method = "ML")
resAE_Flatulence_duration <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 bi=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 ci=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 di=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 test = "t",
                                 mods= mod_duration2,
                                 method = "ML")
resAE_Flatulence_funding <- rma.glmm(measure = "OR",
                                 ai=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 bi=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                 ci=Adverse_Events_count_Data_2_$Flatulence_Yes[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 di=Adverse_Events_count_Data_2_$Flatulence_No[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                 test = "t",
                                 mods= mod_funding2,
                                 method = "ML")

resAE_Vomiting <- rma.glmm(measure = "OR",
                           ai=Adverse_Events_count_Data_1_$Vomiting_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"],
                           bi=Adverse_Events_count_Data_1_$Vomiting_No[Adverse_Events_count_Data_1_$Drug == "VAR"],
                           ci=Adverse_Events_count_Data_1_$Vomiting_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"],
                           di=Adverse_Events_count_Data_1_$Vomiting_No[Adverse_Events_count_Data_1_$Drug == "PBO"],
                           test = "t",
                           method = "ML") #p-value= 0.7800

resAE_Total_Non_Serious <- rma.glmm(measure = "OR",
                                    ai=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    bi=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    ci=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    di=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    test = "t",
                                    method = "ML") #p-value= 0.3073
resAE_Total_Non_Serious_age <- rma.glmm(measure = "OR",
                                    ai=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    bi=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                    ci=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    di=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                    test = "t",
                                    mods= mod_age2,
                                    method = "ML")
resAE_Total_Non_Serious_duration <- rma.glmm(measure = "OR",
                                        ai=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                        bi=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                        ci=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                        di=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                        test = "t",
                                        mods= mod_duration2,
                                        method = "ML")
resAE_Total_Non_Serious_gender <- rma.glmm(measure = "OR",
                                        ai=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                        bi=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                        ci=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                        di=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                        test = "t",
                                        mods= mod_gender2,
                                        method = "ML")
resAE_Total_Non_Serious_funding <- rma.glmm(measure = "OR",
                                           ai=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                           bi=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "VAR"] + 1/2,
                                           ci=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_Yes`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                           di=Adverse_Events_count_Data_2_$`Total_Non-Serious_AE_No`[Adverse_Events_count_Data_2_$Drug == "PBO"] + 1/2,
                                           test = "t",
                                           mods= mod_funding2,
                                           method = "ML")


resAE_Total_Serious <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                method = "ML") #p-value= 0.7031

resAE_Total_Serious_age <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                mods = mod_age2,
                                method = "ML")

resAE_Total_Serious_duration <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                mods = mod_duration2,
                                method = "ML")

resAE_Total_Serious_gender <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                mods = mod_gender2,
                                method = "ML")

resAE_Total_Serious_funding <- rma.glmm(measure = "OR",
                                ai=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                bi=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "VAR"] + 1/2,
                                ci=Adverse_Events_count_Data_1_$Total_Serious_AE_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                di=Adverse_Events_count_Data_1_$Total_Serious_AE_No[Adverse_Events_count_Data_1_$Drug == "PBO"] + 1/2,
                                test = "t",
                                mods = mod_funding2,
                                method = "ML")
#############################################################################################
#Alcohol Craving

study2 <- c("Mitchell et al. 2012", "Mitchell et al. 2012",
            "Litten et al. 2013", "Litten et al. 2013",
            "Bejczy et al. 2015", "Bejczy et al. 2015",
            "Schacht et al. 2014", "Schacht et al. 2014",
            "Vatsalya et al. 2015", "Vatsalya et al. 2015",
            "Ray et al. 2014", "Ray et al. 2014")

drug2 <- c("PBO", "VAR",
           "PBO", "VAR",
           "PBO", "VAR",
           "PBO", "VAR",
           "PBO", "VAR",
           "PBO", "VAR")

alcohol_craving <- c(8.93, 6.64,
                     11.6, 9.9,
                     6.18, 4.54,
                     7.3, 4.9,
                     26.82, 23.65,
                     16.34, 14.68)

alcohol_craving_SD <- c(0.205, 0.389, #SD 0.205, 0.389
                        4.92, 4.92, #SE 0.49, 0.5
                        1.57, 1.69, #SD 1.57, 1.69
                        0.8, 0.7, #SD 0.8, 0.7
                        17.35, 13.42, #SE 3.7, 2.74
                        1.23, 1.21) #SD 1.23, 1.21

sample_size2 <- c(17, 18,
                  101, 97,
                  85, 86,
                  17, 18,
                  22, 24,
                  30, 30)

pfizer_craving_funding <- c(1, 1,
                            0, 0,
                            1, 1,
                            0, 0,
                            1, 1,
                            0, 0)

gender_3 <- c(55, 65,
              73, 68,
              65, 59,
              61.1, 52.94,
              92, 82,
              70, 66.67)

age_3 <- c(NA, NA,
           46, 45,
           55.6, 54.6,
           33.7, 26.8,
           37.9, 29.8,
           38.1, 34.6)

duration_3 <- c(12, 12,
                13, 13,
                12, 12,
                2, 2,
                3, 3,
                1, 1)

treatment_seeking_drinking_3 <- c(0, 0,
                                  84, 84,
                                  NA, NA,
                                  0, 0,
                                  0, 0,
                                  0, 0)

treatment_seeking_smoking_3 <- c(1, 1,
                                 0, 0,
                                 NA, NA,
                                 0, 0,
                                 NA, NA,
                                 0, 0)


alcoholCravingData <- data.frame(study2=study2,
                                 drug2=drug2,
                                 alcohol_craving=alcohol_craving,
                                 alcohol_craving_SD=alcohol_craving_SD,
                                 sample_size2=sample_size2,
                                 pfizer_craving_funding=pfizer_craving_funding,
                                 gender_3=gender_3,
                                 age_3= age_3,
                                 duration_3 = duration_3,
                                 treatment_seeking_drinking_3 = treatment_seeking_drinking_3,
                                 treatment_seeking_smoking_3 = treatment_seeking_smoking_3)

data_craving <- alcoholCravingData[-c(1,2),]
#data_craving <- alcoholCravingData

m1i = data_craving$alcohol_craving[data_craving$drug2 == "VAR"]
m2i = data_craving$alcohol_craving[data_craving$drug2 == "PBO"]

n1i = data_craving$sample_size2[data_craving$drug2 == "VAR"]
n2i = data_craving$sample_size2[data_craving$drug2 == "PBO"]

sd1i = data_craving$alcohol_craving_SD[data_craving$drug2 == "VAR"]
sd2i = data_craving$alcohol_craving_SD[data_craving$drug2 == "PBO"]

pfizer_mod2 <- data_craving$pfizer_craving_funding[data_craving$drug2 == "PBO"]

age_mod2 <- (((data_craving$age_3[data_craving$drug2 == "VAR"] * data_craving$sample_size2[data_craving$drug2 == "VAR"])
              + (data_craving$age_3[data_craving$drug2 == "PBO"] * data_craving$sample_size2[data_craving$drug2 == "PBO"])) 
             / (data_craving$sample_size2[data_craving$drug2 == "VAR"] + data_craving$sample_size2[data_craving$drug2 == "PBO"]))

gender_mod2 <- (((data_craving$gender_3[data_craving$drug2 == "VAR"] * data_craving$sample_size2[data_craving$drug2 == "VAR"])
                 + (data_craving$gender_3[data_craving$drug2 == "PBO"] * data_craving$sample_size2[data_craving$drug2 == "PBO"])) 
                / (data_craving$sample_size2[data_craving$drug2 == "VAR"] + data_craving$sample_size2[data_craving$drug2 == "PBO"]))

duration_mod2 <- data_craving$duration_3[data_craving$drug2 == "PBO"]

treatment_mod2 <- data_craving$treatment_seeking_drinking_3[data_craving$drug2 == "PBO"]

treatmentsmoking_mod2 <- data_craving$treatment_seeking_smoking_3[data_craving$drug2 == "PBO"]

dat_craving <- escalc(measure = "SMD", m1i = m1i, sd1i = sd1i, n1i = n1i,
                      m2i = m2i, sd2i = sd2i, n2i = n2i)

res3 <- rma(yi, vi, data = dat_craving, method = "EB", test = "t") #p-value= 0.0231
res3.pfizer <- rma(yi, vi,mods = pfizer_mod2, data = dat_craving, method = "EB", test = "t") #p-value= 0.3900  
res3.gender <- rma(yi, vi, mods= gender_mod2, data = dat_craving, method = "EB", test = "t") #p-value= 0.0499
res3.age <- rma(yi, vi, mods= age_mod2, data = dat_craving, method = "EB", test = "t") #p-value= 0.4257
res3.duration <- rma(yi, vi, mods= duration_mod2, data = dat_craving, method = "EB", test = "t") #p-value= 0.3763
res3.treatment <- rma(yi, vi, mods= treatment_mod2, data = dat_craving, method = "EB", test = 't') #p-value=0.4771
res3.treatmentsmoking <- rma(yi, vi, mods= treatmentsmoking_mod2, data = dat_craving, method = "EB", test = "t") #Not relevant

###########
event.e = Adverse_Events_count_Data_1_$Nausea_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"]
event.c = Adverse_Events_count_Data_1_$Nausea_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"]

n.e = (Adverse_Events_count_Data_1_$Nausea_Yes[Adverse_Events_count_Data_1_$Drug == "VAR"] 
       + Adverse_Events_count_Data_1_$Nausea_No[Adverse_Events_count_Data_1_$Drug == "VAR"])

n.c = (Adverse_Events_count_Data_1_$Nausea_Yes[Adverse_Events_count_Data_1_$Drug == "PBO"] 
       + Adverse_Events_count_Data_1_$Nausea_No[Adverse_Events_count_Data_1_$Drug == "PBO"])

real.meta <- metabin(event.e = event.e, 
                     n.e = n.e, 
                     event.c = event.c, 
                     n.c = n.c, 
                     sm = "OR", 
                     method = "GLMM")
