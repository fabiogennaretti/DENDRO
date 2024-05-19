#####
# This script creates a wid file handled by Cybis
# http://www.cybis.se/wiki/index.php?title=.wid

# Path to existing rwl file
PathRWL="Path_to_rwl_file/My_rwl_file.rwl"
# Path to wid file to be created
PathWID="Path_to_wid_file/My_wid_file.wid"

#####
require(dplR)
require(glue)
require(magrittr)

my.rwi=read.rwl(PathRWL)
# plot(my.rwi, plot.type="spag")
my.crn <- chron(my.rwi)
# str(my.crn)
# plot(my.crn,xlab="Year",ylab="RWI")

metadata=glue(
  "#DENDRO ",PathWID,"     ",Sys.time(),
  "
  #C DATED ", as.numeric(tail(rownames(my.crn),1)),
  "
  #C This is a comment stored
  #C into a .wid-file...
  "
)
mydata=glue("{my.crn$std[length(my.crn$std):1]}")

write(glue_collapse(c(metadata, mydata), sep = "\n"),  file = PathWID)


