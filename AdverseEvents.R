#Adverse events from Drinks per drinking day: 

study1 <- c("Litten et al. 2013","Litten et al. 2013",
            "Hurt et al. 2018","Hurt et al. 2018",
            "O'Malley et al. 2018","O'Malley et al. 2018",
            "Schacht et al. 2014","Schacht et al. 2014",
            "Mitchell et al. 2012", "Mitchell et al. 2012",
            "Ray et al. 2014", "Ray et al. 2014",
            "McKee et al. 2009", "McKee et al. 2009")

drug1 <- c("PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg")

#######################################
total_seriousAE_percent1 <- c(1.98, 2.06,
                              0.00, 0.00,
                              0.00, 3.13,
                              NA,   NA,
                              3.23, 0.00,
                              0.00, 0.00,
                              0.00, 0.00)

gout_percent <- c(0.99, 0.00,
                  NA, NA,
                  NA, NA,
                  NA, NA,
                  NA, NA,
                  NA, NA,
                  NA, NA)

herniatedDisc_percent <- c(0.99, 0.00,
                           NA, NA,
                           NA, NA,
                           NA, NA,
                           NA, NA,
                           NA, NA,
                           NA, NA)

backInjury_percent <- c(0.00, 1.03,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

gunshot_percent <- c(0.00, 1.03,
                     NA, NA,
                     NA, NA,
                     NA, NA,
                     NA, NA,
                     NA, NA,
                     NA, NA)

suicidalIdeation_percent <- c(NA, NA,
                              NA, NA,
                              0.00, 1.56,
                              NA, NA,
                              3.23, 0.00,
                              NA, NA,
                              NA, NA)

suicidalBehavior_percent <- c(NA, NA,
                              NA, NA,
                              0.00, 1.56,
                              NA, NA,
                              NA, NA,
                              NA, NA,
                              NA, NA)

#######################################
#non-serious adverse events

totalAE_percent1 <- c(89.11, 90.72,
                      11.76, 31.25,
                      68.66, 73.44,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      40.00, 30.00)

constipation_percent1 <- c(1.98, 9.28,
                           NA, NA,
                           13.43, 6.25,
                           NA, NA,
                           NA, NA,
                           NA, NA,
                           20.00, 0.00)

diarrhea_percent1 <- c(9.90, 11.34,
                       NA, NA,
                       14.93, 6.25,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

nausea_percent1 <- c(17.82, 37.11,
                     0.00, 25.00,
                     26.87, 39.06,
                     NA, NA,
                     NA, NA,
                     NA, NA,
                     0.00, 10.00)

vomiting_percent1 <- c(9.90, 12.37,
                       NA, NA,
                       10.45, 6.25,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       10.00, 0.00)

chestPain_percent1 <- c(5.94, 0.00,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

fatigue_percent1 <- c(10.89, 14.43,
                      NA, NA,
                      19.40, 14.06,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA)

irritablity_percent1 <- c(4.95, 11.34,
                          NA, NA,
                          29.85, 31.25,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA)

nasopharyngitis_percent1 <- c(6.93, 6.19,
                              NA, NA,
                              NA, NA,
                              NA, NA,
                              NA, NA,
                              NA, NA,
                              NA, NA)

URT_percent1 <- c(3.96, 5.15,
                  NA, NA,
                  5.97, 6.25,
                  NA, NA,
                  NA, NA,
                  NA, NA,
                  NA, NA)

arthralgia_percent1 <- c(6.93, 9.28,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA)

backPain_percent1 <- c(8.91, 6.19,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

dizziness_percent1 <- c(5.94, 11.34,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

dysgeusia_percent1 <- c(0.99, 6.19,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

headache_percent1 <- c(29.70, 26.80,
                       NA, NA,
                       22.39, 25.00,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

somnolence_percent1 <- c(12.87, 6.19,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA)

abnormalDream_percent1 <- c(11.88, 7.84,
                            NA, NA,
                            22.39, 43.75,
                            NA, NA,
                            NA, NA,
                            NA, NA,
                            10.00, 10.00)

agitation_percent1 <- c(15.84, 12.37,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

anxiety_percent1 <- c(7.92, 9.28,
                      NA, NA,
                      8.96, 12.50,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA)

depressed_percent1 <- c(5.94, 7.22,
                        5.88, 0.00,
                        11.94, 17.19,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

hostility_percent1 <- c(3.96, 6.19,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

insomnia_percent1 <- c(11.88, 15.46,
                       NA, NA,
                       13.43, 15.63,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

rash_percent1 <- c(5.94, 3.09,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA)

sleepDisturbance_percent1 <- c(NA, NA,
                               0.00, 12.50,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               40.00, 10.00)

vividDreams_percent1 <- c(NA, NA,
                          5.88, 6.25,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA)

rhinorrhea_percent1 <- c(NA, NA,
                         NA, NA,
                         13.43, 17.19,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA)

blurredVision_percent1 <- c(NA, NA,
                            NA, NA,
                            2.99, 6.25,
                            NA, NA,
                            NA, NA,
                            NA, NA,
                            NA, NA)

acidReflux_percent1 <- c(NA, NA,
                         NA, NA,
                         7.46, .81,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA)

decreasedAppetite_percent1 <- c(NA, NA,
                                NA, NA,
                                16.42, 17.19,
                                NA, NA,
                                NA, NA,
                                NA, NA,
                                NA, NA)

dryMouth_percent1 <- c(NA, NA,
                       NA, NA,
                       7.46, 15.63,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

dyspepsia_percent1 <- c(NA, NA,
                        NA, NA,
                        8.96, 3.13,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

flatulence_percent1 <- c(NA, NA,
                         NA, NA,
                         11.94, 15.63,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         10.00, 0.00)

tastePerversion_percent1 <- c(NA, NA,
                              NA, NA,
                              7.46, 4.69,
                              NA, NA,
                              NA, NA,
                              NA, NA,
                              NA, NA)

increasedAppetite_percent1 <- c(NA, NA,
                                NA, NA,
                                14.93, 17.19,
                                NA, NA,
                                NA, NA,
                                NA, NA,
                                NA, NA)

incrsBowelMovements_percent1 <- c(NA, NA,
                                  NA, NA,
                                  2.99, 6.25,
                                  NA, NA,
                                  NA, NA,
                                  NA, NA,
                                  NA, NA)

diaphoresis_percent1 <- c(NA, NA,
                          NA, NA,
                          5.97, 4.69,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA)

jointPainSwelling_percent1 <- c(NA, NA,
                                NA, NA,
                                7.46, 4.69,
                                NA, NA,
                                NA, NA,
                                NA, NA,
                                NA, NA)

attention_percent1 <- c(NA, NA,
                        NA, NA,
                        7.46, 9.38,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

urination_percent <- c(NA, NA,
                       NA, NA,
                       10.45, 18.75,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

#######################################
AdverseEventsDPDD <- data.frame(study=study1,
                                drug=drug1,
                                total_seriousAE_percent=total_seriousAE_percent1,
                                       gout_percent=gout_percent,
                                       herniatedDisc_percent=herniatedDisc_percent,
                                       backInjury_percent=backInjury_percent,
                                       gunshot_percent=gunshot_percent,
                                       suicidalIdeation_percent=suicidalIdeation_percent,
                                       suicidalBehavior_percent=suicidalBehavior_percent,
                                       totalAE_percent=totalAE_percent1,
                                       constipation_percent=constipation_percent1,
                                       diarrhea_percent=diarrhea_percent1,
                                       nausea_percent=nausea_percent1,
                                       vomiting_percent=vomiting_percent1,
                                       chestPain_percent=chestPain_percent1,
                                       fatigue_percent=fatigue_percent1,
                                       irritablity_percent=irritablity_percent1,
                                       nasopharyngitis_percent=nasopharyngitis_percent1,
                                       URT_percent=URT_percent1,
                                       arthralgia_percent=arthralgia_percent1,
                                       backPain_percent=backPain_percent1,
                                       dizziness_percent=dizziness_percent1,
                                       dysgeusia_percent=dysgeusia_percent1,
                                       headache_percent=headache_percent1,
                                       somnolence_percent=somnolence_percent1,
                                       abnormalDream_percent=abnormalDream_percent1,
                                       agitation_percent=agitation_percent1,
                                       anxiety_percent=anxiety_percent1,
                                       depressed_percent=depressed_percent1,
                                       hostility_percent=hostility_percent1,
                                       insomnia_percent=insomnia_percent1,
                                       rash_percent=rash_percent1,
                                       sleepDisturbance_percent1=sleepDisturbance_percent1,
                                       vividDreams_percent=vividDreams_percent1,
                                       rhinorrhea_percent,
                                       blurredVision_percent=blurredVision_percent1,
                                       acidReflux_percent=acidReflux_percent1,
                                       decreasedAppetite_percent=decreasedAppetite_percent1,
                                       dryMouth_percent=dryMouth_percent1,
                                       dyspepsia_percent=dyspepsia_percent1,
                                       flatulence_percent=flatulence_percent1,
                                       tastePerversion_percent=tastePerversion_percent1,
                                       increasedAppetite_percent=increasedAppetite_percent1,
                                       incrsBowelMovements_percent=incrsBowelMovements_percent1,
                                       diaphoresis_percent=diaphoresis_percent1,
                                       jointPainSwelling_percent=jointPainSwelling_percent1,
                                       attention_percent=attention_percent1,
                                       urination_percent=urination_percent)

View(AdverseEventsDPDD)

##############################################################################

#Adverse Events from Alcohol Cravings

study2 <- c("Plebani et al. 2013", "Plebani et al. 2013",
            "Fucito et al. 2011", "Fucito et al. 2011",
            "Litten et al. 2013", "Litten et al. 2013",
            "Mitchell et al. 2012", "Mitchell et al. 2012",
            "Bejczy et al. 2015", "Bejczy et al. 2015",
            "Vatsalya et al. 2015", "Vatsalya et al. 2015",
            "Verplaetse et al. 2016", "Verplaetse et al. 2016")

drug2 <- c("PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg")

#######################################

total_seriousAE_percent2 <- c(0.00, 0.00,
                              0.00, 0.00,
                              1.98, 2.06,
                              3.23, 0.00,
                              NA,   NA, #need to contact
                              NA,   NA,
                              NA,   NA) #need to contact

gout_percent2 <- c(NA, NA,
                   NA, NA,
                   0.99, 0.00,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA)

herniatedDisc_percent2 <- c(NA, NA,
                            NA, NA,
                            0.99, 0.00,
                            NA, NA,
                            NA, NA,
                            NA, NA,
                            NA, NA)

backInjury_percent2 <- c(NA, NA,
                         NA, NA,
                         0.00, 1.03,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA)

gunshot_percent2 <- c(NA, NA,
                      NA, NA,
                      0.00, 1.03,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA)

suicidalIdeation_percent2 <- c(NA, NA,
                               NA, NA,
                               NA, NA,
                               3.23, 0.00,
                               NA, NA,
                               NA, NA,
                               NA, NA)

#######################################

#non-serious adverse events

totalAE_percent2 <- c(90.48, 89.47,
                      NA, NA, #need to contact about final percentages
                      89.11, 90.72,
                      0.00, 0.00,
                      96.51, 90.59,
                      81.82, 87.50,
                      NA, NA)

diarrhea_percent2 <- c(9.52, 21.05,
                       NA,   NA,
                       9.90, 11.34,
                       NA, NA,
                       8.40, 3.90,
                       13.64, 25.00,
                       NA, NA)

nausea_percent2 <- c(14.29, 15.79,
                     NA, NA,
                     17.82, 37.11,
                     NA, NA,
                     12.00, 48.10,
                     27.27, 58.33,
                     NA, NA)

headache_percent2 <- c(14.29, 26.32,
                       NA, NA,
                       29.70, 26.80,
                       NA, NA,
                       15.70, 22.10,
                       36.36, 45.83,
                       NA, NA)

bodyaches_percent2 <- c(19.05, 26.32,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

bloodPR_percent2 <- c(9.52, 5.26,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA)

cough_percent2 <- c(4.76, 5.26,
                    NA, NA,
                    NA, NA,
                    NA, NA,
                    6.00, 0.00,
                    36.36, 45.83,
                    NA, NA)

nightmare_percent2 <- c(0.00, 10.53,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

insomnia_percent2 <- c(9.52, 10.53,
                       NA, NA,
                       11.88, 15.46,
                       NA, NA,
                       3.60, 5.20,
                       NA, NA,
                       10.00, 25.00)

vividDreams_percent2 <- c(14.29, 21.05,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA)

PTSD_percent2 <- c(0.00, 5.26,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA)

depressed_percent2 <- c(9.52, 10.53,
                        NA, NA,
                        5.94, 7.22,
                        NA, NA,
                        12.00, 13.00,
                        NA, NA,
                        NA, NA)

anxiety_percent2 <- c(9.52, 5.26,
                      NA, NA,
                      7.92, 9.28,
                      NA, NA,
                      NA, NA,
                      31.82, 33.33,
                      NA, NA)

constipation_percent2 <- c(NA, NA,
                           NA, NA,
                           1.98, 9.28,
                           NA, NA,
                           NA, NA,
                           27.27, 29.17,
                           NA, NA)

vomiting_percent2 <- c(NA, NA,
                       NA, NA,
                       9.90, 12.37,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA)

chestPain_percent2 <- c(NA, NA,
                        NA, NA,
                        5.94, 0.00,
                        NA, NA,
                        NA, NA,
                        4.55, 16.67,
                        NA, NA)

fatigue_percent2 <- c(NA, NA,
                      NA, NA,
                      10.89, 14.43,
                      NA, NA,
                      10.8, 22.1,
                      NA, NA,
                      NA, NA)

irritablity_percent2 <- c(NA, NA,
                          NA, NA,
                          4.95, 11.34,
                          NA, NA,
                          NA, NA,
                          18.18, 25.00,
                          NA, NA)

nasopharyngitis_percent2 <- c(NA, NA,
                              NA, NA,
                              6.93, 6.19,
                              NA, NA,
                              25.3, 19.50,
                              NA, NA,
                              NA, NA)

URT_percent2 <- c(NA, NA,
                  NA, NA,
                  3.96, 5.15,
                  NA, NA,
                  NA, NA,
                  NA, NA,
                  NA, NA)

arthralgia_percent2 <- c(NA, NA,
                         NA, NA,
                         6.93, 9.28,
                         NA, NA,
                         10.80, 5.20,
                         NA, NA,
                         NA, NA)

backPain_percent2 <- c(NA, NA,
                       NA, NA,
                       8.91, 6.19,
                       NA, NA,
                       9.60, 5.20,
                       31.82, 45.83,
                       NA, NA)

dizziness_percent2 <- c(NA, NA,
                        NA, NA,
                        5.94, 11.34,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

dysgeusia_percent2 <- c(NA, NA,
                        NA, NA,
                        0.99, 6.19,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

somnolence_percent2 <- c(NA, NA,
                         NA, NA,
                         12.87, 6.19,
                         NA, NA,
                         NA, NA,
                         27.27, 29.17,
                         NA, NA)

abnormalDream_percent2 <- c(NA, NA,
                            NA, NA,
                            11.88, 27.84,
                            NA, NA,
                            3.60, 16.90,
                            NA, NA,
                            NA, NA)

agitation_percent2 <- c(NA, NA,
                        NA, NA,
                        15.84, 12.37,
                        NA, NA,
                        NA, NA,
                        13.64, 4.17,
                        NA, NA)

hostility_percent2 <- c(NA, NA,
                        NA, NA,
                        3.96, 6.19,
                        NA, NA,
                        NA, NA,
                        NA, NA,
                        NA, NA)

rash_percent2 <- c(NA, NA,
                   NA, NA,
                   5.94, 3.09,
                   NA, NA,
                   NA, NA,
                   NA, NA,
                   NA, NA)

palpitation_percent2 <- c(NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          18.18, 8.33,
                          NA, NA)

flatulence_percent2 <- c(NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         NA, NA,
                         22.73, 41.67,
                         NA, NA)

stomachPain_percent2 <- c(NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          2.40, 7.80,
                          18.18, 25.00,
                          NA, NA)

stomachDiscomfort_percent2 <- c(NA, NA,
                                NA, NA,
                                NA, NA,
                                NA, NA,
                                4.80, 5.20,
                                NA, NA,
                                NA, NA)

anorexia_percent2 <- c(NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       0.00, 25.00,
                       NA, NA)

extremePain_percent2 <- c(NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          27.27, 20.83,
                          NA, NA)

lethargy_percent2 <- c(NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       50.00, 54.17,
                       NA, NA)

memoryImpairment_percent2 <- c(NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               40.91, 45.83,
                               NA, NA)

otherPsychiatric_percent2 <- c(NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               54.55, 70.83,
                               NA, NA)

uterinePain_percent2 <- c(NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          NA, NA,
                          4.55, 12.50,
                          NA, NA)

dyspnea_percent2 <- c(NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      36.36, 45.83,
                      NA, NA)

pruritus_percent2 <- c(NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       9.09, 16.67,
                       NA, NA)

vertigo_percent2 <- c(NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      7.2, 9.1,
                      NA, NA,
                      NA, NA)

pyrexia_percent2 <- c(NA, NA,
                      NA, NA,
                      NA, NA,
                      NA, NA,
                      7.2, 1.3,
                      NA, NA,
                      NA, NA)

dryMouth_percent2 <- c(NA, NA,
                       NA, NA,
                       NA, NA,
                       NA, NA,
                       4.80, 11.70,
                       NA, NA,
                       35.00, 10.00)

sleepDisturbance_percent2 <- c(NA, NA,
                               NA, NA,
                               NA, NA,
                               NA, NA,
                               7.20, 9.10,
                               NA, NA,
                               NA, NA)

#######################################
AdverseEventsAC <- data.frame(study=study2,
                                 drug=drug2,
                                 total_seriousAE_percent=total_seriousAE_percent2,
                                 gout_percent=gout_percent2,
                                 herniatedDisc_percent=herniatedDisc_percent2,
                                 backInjury_percent=backInjury_percent2,
                                 gunshot_percent=gunshot_percent2,
                                 suicidalIdeation_percent=suicidalIdeation_percent2,
                                 totalAE_percent=totalAE_percent2,
                                 diarrhea_percent=diarrhea_percent2,
                                 nausea_percent=nausea_percent2,
                                 headache_percent=headache_percent2,
                                 bodyaches_percent=bodyaches_percent2,
                                 bloodPR_percent=bloodPR_percent2,
                                 cough_percent=cough_percent2,
                                 nightmare_percent=nightmare_percent2,
                                 insomnia_percent=insomnia_percent2,
                                 vividDreams_percent=vividDreams_percent2,
                                 PTSD_percent=PTSD_percent2,
                                 depressed_percent=depressed_percent2,
                                 anxiety_percent=anxiety_percent2,
                                 constipation_percent=constipation_percent2,
                                 vomiting_percent=vomiting_percent2,
                                 chestPain_percent=chestPain_percent2,
                                 fatigue_percent=fatigue_percent2,
                                 irritablity_percent=irritablity_percent2,
                                 nasopharyngitis_percent2=nasopharyngitis_percent2,
                                 URT_percent=URT_percent2,
                                 arthralgia_percent=arthralgia_percent2,
                                 backPain_percent=backPain_percent2,
                                 dizziness_percent=dizziness_percent2,
                                 dysgeusia_percent=dysgeusia_percent2,
                                 somnolence_percent=somnolence_percent2,
                                 abnormalDream_percent=abnormalDream_percent2,
                                 agitation_percent=agitation_percent2,
                                 hostility_percent=hostility_percent2,
                                 rash_percent=rash_percent2,
                                 palpitation_percent=palpitation_percent2,
                                 flatulence_percent=flatulence_percent2,
                                 stomachPain_percent=stomachPain_percent2,
                                 stomachDiscomfort_percent=stomachDiscomfort_percent2,
                                 anorexia_percent=anorexia_percent2,
                                 extremePain_percent=extremePain_percent2,
                                 lethargy_percent=lethargy_percent2,
                                 memoryImpairment_percent=memoryImpairment_percent2,
                                 otherPsychiatric_percent=otherPsychiatric_percent2,
                                 uterinePain_percent=uterinePain_percent2,
                                 dyspnea_percent=dyspnea_percent2,
                                 pruritus_percent=pruritus_percent2,
                                 vertigo_percent=vertigo_percent2,
                                 pyrexia_percent=pyrexia_percent2,
                                 dryMouth_percent=dryMouth_percent2,
                                 sleepDisturbance_percent=sleepDisturbance_percent2)

AdverseEventsAC <- AdverseEventsAC[-c(5:8), ] #without Adverse events data from DPDD
View(AdverseEventsAC)

##############################################################################
#Adverse Events data from PHDD

#All studies included in AdverseEventsAC and AdverseEventsDPDD

##############################################################################

#Combining the two Adverse Events Data frames: 

ncol(AdverseEventsDPDD)
#[1] 48
ncol(AdverseEventsAC)
#[1] 53

#Finding a common outcome: 
na_countAC <-sapply(AdverseEventsAC, function(y) sum(is.na(y)))
na_countAC <- data.frame(na_countAC)
View(na_countAC) #total possible NAs = 10 (5 studies)

na_countDPDD <-sapply(AdverseEventsDPDD, function(y) sum(is.na(y)))
na_countDPDD <- data.frame(na_countDPDD)
View(na_countDPDD) #total possible NAs = 14 (7 studies)

##############################################################################

#Uploading Data set
Adverse_Events_count_Data_1_ <- read_excel("Desktop/Meta-Analysis/Adverse Events (count) Data.xlsx")
View(Adverse_Events_count_Data_1_)
