#######################################################################################
#studies with percent heavy drinking days as outcomes and their basic information for the dataframe
study <- c("Plebani et al. 2013","Plebani et al. 2013",
           "Fucito et al. 2011","Fucito et al. 2011",
           "Litten et al. 2013","Litten et al. 2013",
           "Hurt et al. 2018","Hurt et al. 2018",
           "O'Malley et al. 2018","O'Malley et al. 2018",
           "Bejczy et al. 2015","Bejczy et al. 2015",
           "Schacht et al. 2014","Schacht et al. 2014")
#Studies with copy for PBO and VAR2mg

clinical_trial <- c("NCT00705523", "NCT00705523",
                    "NCT00860028", "NCT00860028",
                    "NCT01146613", "NCT01146613",
                    "NCT01347112", "NCT01347112",
                    "NCT01553136", "NCT01553136",
                    "NCT00846859", "NCT00846859",
                    NA, NA)
#clinicaltrials.gov registered trial numbers (if available)

sample_size <- c(21,  19, #checked
                 15,  15, #checked
                 101, 97, #checked
                 17,  16, #checked
                 67,  64, #checked
                 85,  86, #checked
                 17,  18) #checked
#sample size used for analysis

duration <- c(13, 13, 
              3,  3,
              13, 13, 
              12, 12,
              16, 16,
              12, 12,
              2,  2)
#duration of study

drug <- c("PBO", "VAR2mg",
          "PBO", "VAR2mg",
          "PBO", "VAR2mg",
          "PBO", "VAR2mg",
          "PBO", "VAR2mg",
          "PBO", "VAR2mg",
          "PBO", "VAR2mg")
#Treatment


##################################################################################
#demographic and baseline information other than baseline outcome data

#First column is PBO, second is VAR2mg
age <- c(48.1,  44.8,
         43.47, 42.87,
         45,    46,
         38.8,  40.2,
         34.20, 34.15,
         55.6,  54.6,
         33.7,  26.8)

#mean age

gender <- c(90.5,  78.9,
            53,    53,
            68.3,  73.2,
            65,    63,
            70.15, 70.31,
            65,    59,
            61.1,  52.94)

#percent male

race <- c(71.4,  42.1,
          87,    93,
          70.3,  61.9,
          94,    88,
          35.82, 40.625,
          NA,    NA,
          NA,    NA)
#percent white

ageSD <- c(10.5, 12.3,
           7.99, 8.52,
           12.3, 11,
           10.4, 11.9,
           12,   12,
           8.11, 9.27, #SEM 0.88, 1
           12,   4.3)

married <- c(NA,    NA,
             NA,    NA,
             45.4,  37.6,
             41,    25,
             16.41, 20.31,
             70.58, 65.11,
             NA,    NA)

employed <- c(NA,    NA,
              NA,    NA,
              71.1,  76.2,
              NA,    NA,
              53.73, 50,
              NA,    NA,
              NA,    NA)

educated <- c(NA,    NA,
              73,    80,
              61.9,  71.3,
              71,    56,
              46.26, 29.68,
              42,    40,
              NA,    NA)

region <- c("US",     "US",
            "US",     "US",
            "US",     "US",
            "US",     "US",
            "US",     "US",
            "SWEDEN", "SWEDEN",
            "US",     "US")

daily_smokers <- c(38.10, 47.37,
                   100,   100,
                   41.00, 38.10,
                   100,   100,
                   89.55, 90.625,
                   53.00, 54.00,
                   47.06, 38.89)

cigs_per_day <- c(15.01, 13.88,
                  18.88, 22.17,
                  11.3,  11.50,
                  21.6,  19.1,
                  10.81, 12.11,
                  14.5,  11.7,
                  9.1,   10.6)

cigs_per_day_sd <- c(12.42, 6.75,
                     6.85,  7.31,
                     6.7,   7.22,
                     7.3,   7.5,
                     6.67,  7.42,
                     12.91, 10.57, #SEM 1.4, 1.14
                     5.90,  7.50)

pfizer_funding <- c(1, 1,
                    0, 0,
                    0, 0,
                    1, 1,
                    1, 1,
                    1, 1,
                    0, 0)

percent_abs <- c(NA,    NA,
                 21.11, 31.78,
                 7.9,   7.7,
                 NA,    NA,
                 21.49, 19.38,
                 12.71, 12.57,
                 NA,    NA)

percent_abs_sd <- c(NA,    NA,
                    29.35, 23.36,
                    13.6,  12.5,
                    NA,    NA,
                    17.79, 18.46,
                    22.40, 21.24, #SEM 2.43, 2.29
                    NA,    NA)

family_hist_alc <- c(NA,    NA,
                     NA,    NA,
                     49.5,  53.6,
                     NA,    NA,
                     26.87, 34.38,
                     68.00, 60.00,
                     64.71, 50.00)

drinks_per_drinking_day <- c(NA,   NA,
                             NA,   NA,
                             13.6, 15.3,
                             NA,   NA,
                             8.70, 8.70,
                             6.89, 8.14,
                             6.80, 8.60)

drinks_per_drinking_day_sd <- c(NA,   NA,
                                NA,   NA,
                                9,    9.6,
                                NA,   NA,
                                3.97, 4.28,
                                3.41, 4.08, #SEM 0.37, 0.44
                                1.80, 6.90)
########################################################################################

PHDD_base <- c(57.14, 54.29,
               48.44, 42.67,
               87.20, 88.10,
               44.28, 44.64,
               61.60, 63.59,
               81.28, 79.00,
               76.20, 75.50)

PHDD_baseSD <- c(NA,    NA, 
                 31.99, 26.68,
                 16.40, 15.80,
                 25.00, 31.07,
                 24.81, 24.97,
                 20.42, 18.12, #SEM
                 18.50, 23.20)

PHDD_post <- c(17.29, 12.71, #median... 18.57% for 13th week, 6.92% for 13th week 
               38.00, 22.70,
               48.40, 37.90, #averaged across treatment period, for the week 9-13... missing days imputed as heavy drinking days 50.2, 39.6
               #missing days using multiple imputations 47.4,38.2
               32.50, 28.21, #for end of treatment...week 24: 31.43, 27.86
               9.78,  11.02, #8.08,  7.32, #LSmean percent last 8 weeks
               49.00, 51.00,
               56.40, 59.20)

PHDD_postSD <- c(4.43,  2.57,
                 31.20, 17.50,
                 3.52,  3.60,
                 25.71, 29.64, #for end of treatment...week 24: 26.79, 30.36
                 10.07, 9.84, #Standard Error = 1.23, 1.23
                 26.86, 27.89,
                 28.86, 28.85)

#######################################################################################
#Alternative outcome measurements
#Plebani et al. 2013

#the varenicline group had slightly lower numbers of heavy drinking days:
#beta = -0.67
#exp(beta) = 0.51
#chi-squared(1) = 2.71
#p-value = 0.10
#placebo group having an average of 1.95 times more heavy drinking days per week

########################################################################################
heavyDrinkData <- data.frame(study=study,
                             clinical_trial=clinical_trial,
                             sample_size=sample_size,
                             duration=duration,
                             drug=drug,
                             age=age,
                             ageSD=ageSD,
                             gender=gender,
                             married=married,
                             employed=employed,
                             educated=educated,
                             race=race,
                             cigs_per_day=cigs_per_day,
                             cigs_per_day_sd=cigs_per_day_sd,
                             pfizer_funding=pfizer_funding,
                             percent_abs=percent_abs,
                             percent_abs_sd=percent_abs_sd,
                             family_hist_alc=family_hist_alc,
                             drinks_per_drinking_day=drinks_per_drinking_day,
                             drinks_per_drinking_day_sd=drinks_per_drinking_day_sd,
                             PHDD_base=PHDD_base,
                             PHDD_baseSD=PHDD_baseSD,
                             PHDD_post=PHDD_post,
                             PHDD_postSD=PHDD_postSD)

View(heavyDrinkData)

####################################################################################

chisq.test(heavyDrinkData$age[heavyDrinkData$drug == "PBO"]) #p-value = 0.1934
chisq.test(heavyDrinkData$age[heavyDrinkData$drug == "VAR2mg"]) #p-value = 0.0736
#testing for differences in age between groups

chisq.test(heavyDrinkData$gender[heavyDrinkData$drug == "PBO"]) #p-value = 0.06557
chisq.test(heavyDrinkData$gender[heavyDrinkData$drug == "VAR2mg"]) #p-value = 0.1445
#testing for differences in gender between groups

chisq.test(heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
                               & heavyDrinkData$study != "Schacht et al. 2014" 
                               & heavyDrinkData$study != "Bejczy et al. 2015"] )
#p-value < 0.001

chisq.test(heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
                               & heavyDrinkData$study != "Schacht et al. 2014" 
                               & heavyDrinkData$study != "Bejczy et al. 2015"] )
#p-value < 0.001
#testing for differences in race between groups

mean(heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
                         & heavyDrinkData$study != "Schacht et al. 2014" 
                         & heavyDrinkData$study != "Bejczy et al. 2015"] )
#71.704% white

mean(heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
                         & heavyDrinkData$study != "Schacht et al. 2014" 
                         & heavyDrinkData$study != "Bejczy et al. 2015"])
#65.125% white

#########################################################################################
t.test(heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
                             & heavyDrinkData$study != "Schacht et al. 2014" 
                             & heavyDrinkData$study != "Bejczy et al. 2015"], mu =  77.35)
# data:  heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
#                            & heavyDrinkData$study !=     "Schacht et al. 2014"
#                            & heavyDrinkData$study != "Bejczy et al. 2015"]
# t = -0.56169, df = 4, p-value = 0.6043
# alternative hypothesis: true mean is not equal to 77.35
# 95 percent confidence interval:
#   43.79552 99.61248
# sample estimates:
#   mean of x
# 71.704

t.test(heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
                             & heavyDrinkData$study != "Schacht et al. 2014" 
                             & heavyDrinkData$study != "Bejczy et al. 2015"], 77.35)

# data:  heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
#                            & heavyDrinkData$study !=     "Schacht et al. 2014" 
#                            & heavyDrinkData$study != "Bejczy et al. 2015"]
# t = -1.1066, df = 4, p-value = 0.3306
# alternative hypothesis: true mean is not equal to 77.35
# 95 percent confidence interval:
#   34.45136 95.79864
# sample estimates:
#   mean of x 
# 65.125

#tested using the percent white including white hispanics
####################################################################################
t.test(heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
                             & heavyDrinkData$study != "Schacht et al. 2014" 
                             & heavyDrinkData$study != "Bejczy et al. 2015"], mu =  62.06)

# One Sample t-test
# 
# data:  heavyDrinkData$race[heavyDrinkData$drug == "PBO" 
#                            & heavyDrinkData$study != "Schacht et al. 2014" 
#                            & heavyDrinkData$study != "Bejczy et al. 2015"]
# t = 0.95942, df = 4, p-value = 0.3917
# alternative hypothesis: true mean is not equal to 62.06
# 95 percent confidence interval:
#   43.79552 99.61248
# sample estimates:
#   mean of x 
# 71.704

t.test(heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
                             & heavyDrinkData$study != "Schacht et al. 2014" 
                             & heavyDrinkData$study != "Bejczy et al. 2015"], mu = 62.06)

# One Sample t-test
# 
# data:  heavyDrinkData$race[heavyDrinkData$drug == "VAR2mg" 
#                            & heavyDrinkData$study != "Schacht et al. 2014" 
#                            & heavyDrinkData$study != "Bejczy et al. 2015"]
# t = 0.27743, df = 4, p-value = 0.7952
# alternative hypothesis: true mean is not equal to 62.06
# 95 percent confidence interval:
#   34.45136 95.79864
# sample estimates:
#   mean of x
# 65.125

#Using non-hispanic whites
########################################################################################
#calculating standard error

ai = heavyDrinkData$PHDD_base[heavyDrinkData$drug=="VAR2mg"]
bi = heavyDrinkData$PHDD_post[heavyDrinkData$drug=="VAR2mg"]
ci = heavyDrinkData$PHDD_base[heavyDrinkData$drug=="PBO"]
di = heavyDrinkData$PHDD_post[heavyDrinkData$drug=="PBO"]

sdbi = PHDD_postSD[heavyDrinkData$drug=="VAR2mg"]
sddi = PHDD_postSD[heavyDrinkData$drug=="PBO"]

Nbi = sample_size[heavyDrinkData$drug=="VAR2mg"]
Ndi = sample_size[heavyDrinkData$drug=="PBO"]

SEbi = sdbi/sqrt(Nbi)

SEdi = sddi/sqrt(Ndi)

cig_mod <- (((heavyDrinkData$sample_size[heavyDrinkData$drug == "VAR2mg"] * heavyDrinkData$cigs_per_day[heavyDrinkData$drug == "VAR2mg"])
            + (heavyDrinkData$sample_size[heavyDrinkData$drug == "PBO"] * heavyDrinkData$cigs_per_day[heavyDrinkData$drug == "PBO"]))/
              (heavyDrinkData$sample_size[heavyDrinkData$drug == "VAR2mg"] + heavyDrinkData$sample_size[heavyDrinkData$drug == "PBO"]))

pfizer_mod <- heavyDrinkData$pfizer_funding[heavyDrinkData$drug == "VAR2mg"]

PHDDmod1 <- rma(measure = "MD",
                m1i = bi,
                m2i = di,
                sd1i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="VAR2mg"],
                sd2i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="PBO"],
                n1i = heavyDrinkData$sample_size[heavyDrinkData$drug=="VAR2mg"],
                n2i = heavyDrinkData$sample_size[heavyDrinkData$drug=="PBO"],
                method = "ML")
forest(PHDDmod1)
funnel(PHDDmod1)

PHDDmod2 <- rma(measure = "SMD",
                m1i = bi,
                m2i = di,
                sd1i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="VAR2mg"],
                sd2i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="PBO"],
                n1i = heavyDrinkData$sample_size[heavyDrinkData$drug=="VAR2mg"],
                n2i = heavyDrinkData$sample_size[heavyDrinkData$drug=="PBO"],
                method = "ML")
forest(PHDDmod2)
funnel(PHDDmod2)

PHDDmod3 <- rma(measure = "MD",
                m1i = bi,
                m2i = di,
                sd1i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="VAR2mg"],
                sd2i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="PBO"],
                n1i = heavyDrinkData$sample_size[heavyDrinkData$drug=="VAR2mg"],
                n2i = heavyDrinkData$sample_size[heavyDrinkData$drug=="PBO"],
                mods = pfizer_mod,
                method = "ML")
forest(PHDDmod3)
funnel(PHDDmod3)

PHDDmod4 <- rma(measure = "SMD",
                m1i = bi,
                m2i = di,
                sd1i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="VAR2mg"],
                sd2i = heavyDrinkData$PHDD_postSD[heavyDrinkData$drug=="PBO"],
                n1i = heavyDrinkData$sample_size[heavyDrinkData$drug=="VAR2mg"],
                n2i = heavyDrinkData$sample_size[heavyDrinkData$drug=="PBO"],
                mods = pfizer_mod,
                method = "ML")
forest(PHDDmod4)
funnel(PHDDmod4)

data.list <- list(y0=bi, y1=di, se0=SEbi, se1=SEdi)

m1 <- bmeta(data = data.list, outcome="ctns", model="std.ta", type="ran",n.iter=1000000)

sdbi = PHDD_postSD[heavyDrinkData$drug=="VAR2mg"]
sddi = PHDD_postSD[heavyDrinkData$drug=="PBO"]

Nbi = sample_size[heavyDrinkData$drug=="VAR2mg"]
Ndi = sample_size[heavyDrinkData$drug=="PBO"]

SEbi = sdbi/sqrt(Nbi)

SEdi = sddi/sqrt(Ndi)

#####################################################################################
#Demographics with too many missing values

years_of_alc <- c(21.2, 18.7,
                  NA,   NA,
                  NA,   NA,
                  NA,   NA,
                  NA,   NA,
                  13.0, 13.7,
                  NA,   NA)

years_of_alc_sd <- c(12.0, 10.7,
                     NA,   NA,
                     NA,   NA,
                     NA,   NA,
                     NA,   NA,
                     10.23,11.04, #SEM 1.11, 1.19
                     NA,   NA)

ASI <- c(0.60, 0.61,
         NA,   NA,
         NA,   NA,
         NA,   NA,
         NA,   NA,
         NA,   NA,
         NA,   NA)

ASI_sd <- c(0.15, 0.16,
            NA,   NA,
            NA,   NA,
            NA,   NA,
            NA,   NA,
            NA,   NA,
            NA,   NA)

alcohol_use_past30 <- c(17.6, 18.4,
                        NA,   NA,
                        NA,   NA,
                        NA,   NA,
                        NA,   NA,
                        NA,   NA,
                        NA,   NA)

alcohol_use_past30_sd <- c(9.10, 0.80,
                           NA,   NA,
                           NA,   NA,
                           NA,   NA,
                           NA,   NA,
                           NA,   NA,
                           NA,   NA)

prior_VAR2mg_per <- c(NA, NA,
                      40, 27,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA)



OCDS <- c(NA,    NA,
          8.16,  7.95,
          NA,    NA,
          NA,    NA,
          13.81, 12.72,
          22.30, 23.70,
          NA,    NA)

OCDS_sd <- c(NA,   NA,
             3.43, 3.71,
             NA,   NA,
             NA,   NA,
             6.69, 7.48,
             6.08, 7.14, #SEM 0.66, 0.77
             NA,   NA)

alcohol_per_week <- c(NA,  NA,
                      NA,  NA,
                      NA,  NA,
                      NA,  NA,
                      NA,  NA,
                      5.7, 5.44,
                      NA,  NA)

alcohol_per_week_sd <- c(NA,   NA,
                         NA,   NA,
                         NA,   NA,
                         NA,   NA,
                         NA,   NA,
                         0.16, 50.45, #SEM 0.16, 5.44
                         NA,   NA)

drinks_per_day <- c(NA,   NA,
                    NA,   NA,
                    12.5, 14,
                    NA,   NA,
                    NA,   NA,
                    NA,   NA,
                    NA,   NA)

drinks_per_day_sd <- c(NA, NA,
                       NA, NA,
                       9,  9.3,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

ImBIBe <- c(NA,    NA,
            NA,    NA,
            16.3,  17.8,
            NA,    NA,
            17.56, 15.57,
            NA,    NA,
            NA,    NA)

ImBIBe_sd <- c(NA,   NA,
               NA,   NA,
               9.7,  9.8,
               NA,   NA,
               8.03, 7.17,
               NA,   NA,
               NA,   NA)

age_drinking_onset <- c(NA,   NA,
                        NA,   NA,
                        19.3, 18.7,
                        NA,   NA,
                        NA,   NA,
                        15.7, 15.7,
                        NA,   NA)

age_drinking_onset_sd <- c(NA,   NA,
                           NA,   NA,
                           5.5,  6.1,
                           NA,   NA,
                           NA,   NA,
                           2.67, 3.52, #SEM
                           NA,   NA)

GGT <- c(NA,   NA,
         NA,   NA,
         70.1, 72.9,
         NA,   NA,
         NA,   NA,
         NA,   NA,
         NA,   NA)
#Gamma-glutamyl transpeptidase

GGT_sd <- c(NA,    NA,
            NA,    NA,
            103.1, 123.5,
            NA,    NA,
            NA,    NA,
            NA,    NA,
            NA,    NA)

fagerstrom <- c(NA,   NA,
                NA,   NA,
                3.1,  3.0,
                6.0,  6.0,
                4.50, 4.41,
                NA,   NA,
                NA,   NA)
#test for nicotine dependence

fagerstrom_sd <- c(NA,   NA,
                   NA,   NA,
                   2.6,  2.4,
                   2.1,  2.1,
                   2.40, 2.62,
                   NA,   NA,
                   NA,   NA)

tried_to_quit_percent <- c(NA,    NA,
                           NA,    NA,
                           NA,    NA,
                           94,    81,
                           68.66, 68.75,
                           NA,    NA,
                           NA,    NA)

alcohol_trt_history <- c(NA,    NA,
                         NA,    NA,
                         NA,    NA,
                         NA,    NA,
                         25.37, 29.69,
                         NA,    NA,
                         NA,    NA)

age_alcoholism <- c(NA,    NA,
                    NA,    NA,
                    NA,    NA,
                    NA,    NA,
                    25.90, 31.19,
                    NA,    NA,
                    NA,    NA)

age_alcoholism_sd <- c(NA,   NA,
                       NA,   NA,
                       NA,   NA,
                       NA,   NA,
                       8.24, 10.22,
                       NA,   NA,
                       NA,   NA)

ADS <- c(NA,    NA,
         NA,    NA,
         NA,    NA,
         NA,    NA,
         14.24, 13.73,
         NA,    NA,
         12.00, 11.00)

ADS_sd <- c(NA,   NA,
            NA,   NA,
            NA,   NA,
            NA,   NA,
            6.71, 5.67,
            NA,   NA,
            6.80, 5.20)

total_abs_goal_perc <- c(NA,    NA,
                         NA,    NA,
                         27.7,  27.8,
                         NA,    NA,
                         10.45, 10.94,
                         NA,    NA,
                         NA,    NA)

EGL <- c(NA,    NA,
         NA,    NA,
         NA,    NA,
         NA,    NA,
         53.73, 59.38,
         NA,    NA,
         NA,    NA)
#ethyl glucuronide level >= 200ng/mL

smoking_trt_goal <- c(NA,    NA,
                      NA,    NA,
                      NA,    NA,
                      NA,    NA,
                      46.27, 57.81,
                      NA,    NA,
                      NA,    NA)

alcohol_trt_goal <- c(100, 100,
                      NA,  NA,
                      100, 100,
                      NA,  NA,
                      NA,  NA,
                      NA,  NA,
                      NA,  NA)

PACS <- c(NA,   NA,
          NA,   NA,
          16.7, 17.7,
          NA,   NA,
          NA,   NA,
          NA,   NA,
          NA,   NA)

PACS_sd <- c(NA,  NA,
             NA,  NA,
             6.8, 6.2,
             NA,  NA,
             NA,  NA,
             NA,  NA,
             NA,  NA)

AUDIT <- c(NA,   NA,
           NA,   NA,
           NA,   NA,
           NA,   NA,
           NA,   NA,
           20.4, 22.0,
           NA,   NA)

AUDIT_sd <- c(NA,   NA,
              NA,   NA,
              NA,   NA,
              NA,   NA,
              NA,   NA,
              4.89, 6.03, #SEM 0.53, 0.65
              NA,   NA)



