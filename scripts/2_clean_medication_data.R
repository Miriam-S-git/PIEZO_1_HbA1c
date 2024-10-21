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


# read in mapping file and harmonise column names
#bnf_snomed_mapping_data <- read_csv ("PATH")


bnf_snomed_mapping <- bnf_snomed_mapping_data %>% 
dplyr::rename ("bnf_code" = 3, 
               "snomed_code = 5 %>% 
dplyr::select(bnf_code, snomed_code)

# join snomed codes to diabetes drugs. 
# Is many to one as multiple SNOMED codes for a single bnf code

diabetes_drugs <- diabetes_drugs %>% 
dplyr::left_join (
bnf_snomed_mapping, 
by = join_by (bnf_code)
)

# save a copy
# write_csv(diabetes_drugs, "PATH/diabetes_drugs.csv")


################## PART 2:LINK SNOMED codes to patient records















