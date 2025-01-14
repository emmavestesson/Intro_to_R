library(gtsummary)
library(broom)
library(tidyverse)
library(officer)
library(gapminder)

# crosstable


# tbl_summary - by continent and only include life expectancy, pop and GDP


# tbl_regression

# broom 


# saving tables in a word document - they need to be flextables
doc <- read_docx()
doc <- doc %>%
  # Add title
  body_add_par("Table 1. Cross table", style = "table title") %>% 
  # Add table to doc
  flextable::body_add_flextable(value = ct) 


doc %>%
  # Add title
  body_add_par("Table 2. At least one test during stay", style = "table title") %>% 
  # Add table to doc
  flextable::body_add_flextable(value = table1) %>%
  # Save to location inside computer
  print(doc, target = here::here("Tables.docx"))
