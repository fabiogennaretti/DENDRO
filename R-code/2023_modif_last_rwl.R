#####
# This script modifies final years of time series in rwl files
# http://www.cybis.se/wiki/index.php/Rwl
# 2023-11-05
# FG

##### Packages #####
require(dplR)
require(data.table)

##### Parameters #####
# Path to the existing rwl file: It may contain multiple time series
PathRWL="Path_to_rwl_file/My_rwl_file.rwl"
# Path to the new rwl file
PathNEW="Path_to_NEW_file/My_NEW_file.rwl"

# Specify which time series (T + actual name) and Modify year
Finalyears=data.frame(
  T016009=2020,
  T018002=2020
)
names(Finalyears)=(substr(names(Finalyears), 2, 100))

##### Function #####
modif.last=function(rwl,Finalyears){
  # Function to modify last years in rwl files
  # rwl = rwl file
  # Finalyears = data.frame of final years to modify. See exemple below
  # Finalyears=data.frame(
  #   T016009=2020,
  #   T018002=2017
  # )
  # names(Finalyears)=(substr(names(Finalyears), 2, 100))
  #
  
  # rwl=Series
  # Finalyears
  if(max(Finalyears)>last(time(rwl))){
    rAdd=max(Finalyears)-last(time(rwl))
    dAdd=data.frame(matrix(NA,nrow=rAdd,ncol=ncol(rwl)))
    names(dAdd)=names(rwl)
    rwl2=rbind(rwl,dAdd)
    rownames(rwl2)[(nrow(rwl)+1):nrow(rwl2)]=(max(Finalyears)-(max(Finalyears)-last(time(rwl))-1)):max(Finalyears)
  }
  if(min(Finalyears)<last(time(rwl))){
    rAdd=last(time(rwl))-min(Finalyears)
    dAdd=data.frame(matrix(NA,nrow=rAdd,ncol=ncol(rwl)))
    names(dAdd)=names(rwl)
    if(max(Finalyears)>last(time(rwl))){
        rwl2=rbind(dAdd,rwl2)
      } else {
        rwl2=rbind(dAdd,rwl)
      }
    rownames(rwl2)[1:rAdd]=(min(time(rwl))-rAdd):(min(time(rwl))-1)
    rwl2=as.rwl(rwl2)
  }
  for (i in names(Finalyears)){
    # i=names(Finalyears)[1]
    rwl2[[i]] = NA
    yr <- time(rwl)
    yr2=yr[!is.na(rwl[[i]])]-last(yr[!is.na(rwl[[i]])])+Finalyears[[i]]
    rwl2[[i]][time(rwl2) %in% yr2]=rwl[[i]][!is.na(rwl[[i]])]
  }
  return(rwl2)
}

##### Run #####
Series=read.rwl(PathRWL)
str(Series)
time(Series)
rwl.stats(Series)

Series2 = modif.last(Series,Finalyears)
write.rwl(Series2, PathNEW)
