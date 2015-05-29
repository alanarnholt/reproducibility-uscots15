# Reference 
# http://www.r-bloggers.com/how-to-source-an-r-script-automatically-on-a-mac-using-automator-and-ical/
# https://github.com/majerus/r_code_tips/blob/master/iterative_reporting/r_script.R

library(knitr)
library(markdown)
library(rmarkdown)


## knitr loop

for (i in 1:nrow(rstudio_login)){
    rmarkdown::render(input = "repro-handout-markdown.Rmd", 
                      output_format = "pdf_document",
                      output_file = paste("handout_", i, ".pdf", sep=''),
                      output_dir = "handouts/")
}