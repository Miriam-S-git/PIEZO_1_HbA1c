#### Notes on how medication data were created

###### Monday 14th October 2024

Discussion with DS.

* Medication data is stored as SNOMED CODES.
* There is a BNF to SNOMED mapping file in the TRE in DS folder - can read across
* Mapping files are from the NHSBA [website](https://www.nhsbsa.nhs.uk/prescription-data/understanding-our-data/bnf-snomed-mapping)
* BNF codes are organised hierarchically. First 3 digits contains most necessary information to identify drugs used in the treatment of diabetes
* NHSBA provides a list of BNF codes and corresponding drugs [here](https://applications.nhsbsa.nhs.uk/infosystems/data/showDataSelector.do?reportId=126)
* I used the most recent available list BNF CODE information/01-01-2024:86 in repo [here](notes/BNF_codes_2024)



