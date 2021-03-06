
## install packages required to build the docs
#install.packages("devtools")
#library(devtools)
#install_github("staticdocs", "hadley")
#install_github("buildDocs", "hafen")


## load the pacakge
library(buildDocs)

files <- list.files("~/Github/docs-RHIPE/tutorial/docs")
files <- grep('01', files, invert=T, value=T)
## function to build the docs
#   assuming your working directory is 
#   doc.RHIPE/how-to-nuggets/
buildDocs(
   docsLoc       = "./docs",
   outLoc        = "./",
   copyrightText = NULL,
   pageList      = files,
   navPill       = packageNavPill("https://github.com/tesseradata/RHIPE"),
   # editHref      = "https://github.com/user/project/edit/gh-pages/docs/",
   knit          = TRUE,
   purl          = FALSE
)

