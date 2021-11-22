study2 <- c("Plebani et al. 2013", "Plebani et al. 2013",
            "Fucito et al. 2011", "Fucito et al. 2011",
            "Litten et al. 2013", "Litten et al. 2013",
            "Mitchell et al. 2012", "Mitchell et al. 2012",
            "Bejczy et al. 2015", "Bejczy et al. 2015",
            "Vatsalya et al. 2015", "Vatsalya et al. 2015",
            "Verplaetse et al. 2016", "Verplaetse et al. 2016")

clinical_trial2 <- c("NCT00705523", "NCT00705523",
                     NA, NA,
                     "NCT01146613", "NCT01146613",
                     "NCT01011907", "NCT01011907",
                     "NCT00846859", "NCT00846859",
                     "NCT00695500", "NCT00695500",
                     NA, NA)

sample_size2 <- c(21, 19,
                  15, 15,
                  101, 97,
                  31, 33,
                  85, 86,
                  12, 17,
                  17, 15)

duration2 <- c(13, 13, 
               8,  8,
               13, 13,
               16, 16,
               12, 12,
               3,  3,
               4,  4)

drug2 <- c("PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg",
           "PBO", "VAR2mg")

#################################################################################

age2 <- c(48.1,  44.8,
         43.47, 42.87,
         45,    46,
         25.00, 29.00, #median
         55.6,  54.6,
         37.9,  29.8,
         35.3,  34.4)

ageSD2 <- c(10.5, 12.3,
            7.99, 8.52,
            11,   12.3,
            NA,   NA,
            0.88, 1,
            13.5, 9.4,
            9.47, 12.6)

gender2 <- c(90.5,  78.9,
             53,    53,
             68.3,  73.2,
             55.00, 65.00,
             65,    59,
             92,    82,
             65,    73)

race2 <- c(71.4,  42.1,
           87,    93,
           70.3,  61.9,
           73.00, 64.00,
           NA,    NA,
           NA,    NA,
           47,    80)

married2 <- c(NA,    NA,
              NA,    NA,
              45.4,  37.6,
              NA,    NA,
              70.58, 65.11,
              NA,    NA,
              24,    0)

educated2 <- c(NA,    NA,
               73,    80,
               61.9,  71.3,
               NA,    NA,
               42,    40,
               NA,    NA,
               NA,    NA)

employed2 <- c(NA,    NA,
               NA,    NA,
               71.1,  76.2,
               NA,    NA,
               NA,    NA,
               NA,    NA,
               NA,    NA)

#######################################################################

OCDS <- c(NA, NA,
          NA, NA,
          NA, NA,
          -4.36, -3.07,
          6.18, 4.54,
          NA, NA,
          NA, NA)

OCDS_SD <- c(NA, NA,
          NA, NA,
          NA, NA,
          0.205, 0.389,
          1.57, 1.69,
          NA, NA,
          NA, NA)

PACS <- c(NA, NA,
          NA, NA,
          NA, NA,
          NA, NA,
          NA, NA,
          NA, NA,
          NA, NA)

PACS_SD <- c(NA, NA,
             NA, NA,
             NA, NA,
             NA, NA,
             NA, NA,
             NA, NA,
             NA, NA)

AUQ <- c(NA, NA,
         NA, NA,
         NA, NA,
         NA, NA,
         NA, NA,
         26.82, 23.65,
         NA, NA)

AUQ_SD <- c(NA, NA,
            NA, NA,
            NA, NA,
            NA, NA,
            NA, NA,
            3.7, 2.74,
            NA, NA)








######################################################################
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

############################################################################
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

alcoholCravingData <- data.frame(study2=study2,
                                 clinical_trial2=clinical_trial2,
                                 sample_size2=sample_size2,
                                 duration2=duration2,
                                 drug2=drug2,
                                 age2=age2,
                                 ageSD2=ageSD2,
                                 gender2=gender2,
                                 race2=race2,
                                 married2=married2,
                                 educated2=educated2,
                                 employed2=employed2,
                                 total_seriousAE_percent2=total_seriousAE_percent2,
                                 gout_percent2=gout_percent2,
                                 herniatedDisc_percent2=herniatedDisc_percent2,
                                 backInjury_percent2=backInjury_percent2,
                                 gunshot_percent2=gunshot_percent2,
                                 suicidalIdeation_percent2=suicidalIdeation_percent2,
                                 totalAE_percent2=totalAE_percent2,
                                 diarrhea_percent2=diarrhea_percent2,
                                 nausea_percent2=nausea_percent2,
                                 headache_percent2=headache_percent2,
                                 bodyaches_percent2=bodyaches_percent2,
                                 bloodPR_percent2=bloodPR_percent2,
                                 cough_percent2=cough_percent2,
                                 nightmare_percent2=nightmare_percent2,
                                 insomnia_percent2=insomnia_percent2,
                                 vividDreams_percent2=vividDreams_percent2,
                                 PTSD_percent2=PTSD_percent2,
                                 depressed_percent2=depressed_percent2,
                                 anxiety_percent2=anxiety_percent2,
                                 constipation_percent2=constipation_percent2,
                                 vomiting_percent2=vomiting_percent2,
                                 chestPain_percent2=chestPain_percent2,
                                 fatigue_percent2=fatigue_percent2,
                                 irritablity_percent2=irritablity_percent2,
                                 nasopharyngitis_percent2=nasopharyngitis_percent2,
                                 URT_percent2=URT_percent2,
                                 arthralgia_percent2=arthralgia_percent2,
                                 backPain_percent2=backPain_percent2,
                                 dizziness_percent2=dizziness_percent2,
                                 dysgeusia_percent2=dysgeusia_percent2,
                                 somnolence_percent2=somnolence_percent2,
                                 abnormalDream_percent2=abnormalDream_percent2,
                                 agitation_percent2=agitation_percent2,
                                 hostility_percent2=hostility_percent2,
                                 rash_percent2=rash_percent2,
                                 palpitation_percent2=palpitation_percent2,
                                 flatulence_percent2=flatulence_percent2,
                                 stomachPain_percent2=stomachPain_percent2,
                                 stomachDiscomfort_percent2=stomachDiscomfort_percent2,
                                 anorexia_percent2=anorexia_percent2,
                                 extremePain_percent2=extremePain_percent2,
                                 lethargy_percent2=lethargy_percent2,
                                 memoryImpairment_percent2=memoryImpairment_percent2,
                                 otherPsychiatric_percent2=otherPsychiatric_percent2,
                                 uterinePain_percent2=uterinePain_percent2,
                                 dyspnea_percent2=dyspnea_percent2,
                                 pruritus_percent2=pruritus_percent2,
                                 vertigo_percent2=vertigo_percent2,
                                 pyrexia_percent2=pyrexia_percent2,
                                 dryMouth_percent2=dryMouth_percent2,
                                 sleepDisturbance_percent2=sleepDisturbance_percent2)

View(alcoholCravingData)
