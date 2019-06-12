second<- function(directory, id= 1:332){
  # setting the directory
  if(grep("specdata", directory)==1){
  directory<- ("./specdata/")
  }
  #initialise a dataframe to store values
  df<- data.frame(id=id,n=0)
  all_files <-  list.files(directory, full.names = TRUE) 
  
  for (i in id){
    tmp<-read.csv(all_files[i])
    n<- sum(complete.cases(tmp))
    df[i,"n"]<-n
  }
  df
}
  