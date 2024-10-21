# M Samuel R file 
# 21st October 2024
# clean medication data_for diabetes data



library(readr)
library(dplyr)

# read in data - adapt path
#BNF_drugs <- read_csv("~/BNF_drug_name_data.csv")

#limit to drugs used in diabetes BNF section 0601: insulin versus non insulin
# 060101 = insulins
# 060102 = other diabetes drugs

diabetes_drugs <- BNF_drugs 

# rename column names
diabetes_drugs <- diabetes_drugs %>% 
dplyr::rename ("bnf_section" = 3, 
               "bnf_section_code" = 4, 
               "bnf_paragraph" = 5, 
               "bnf_paragraph_code" = 6, 
               "bnf_subparagraph" = 7, 
               "bnf_subparagraph_code" = 8)  %>%
dplyr::filter(bnf_paragraph code == "060101"|bnf_paragraph code =="060102")  # filter diabetes drug names












