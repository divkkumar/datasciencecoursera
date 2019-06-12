
pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332) {
  
  # set working directory
  if(grep("specdata", directory) == 1) {
    directory <- ("./specdata/")
  }
  # initialize a vector to hold the pollutant data
  mean_pollutant <- c()
  # find all files in the specdata folder
  all_files <-  list.files(directory) 

  for(i in id) {
    current_file <- read.csv(all_files[i], header=T, sep=",")
    head(current_file)
    pollutant
    na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
    mean_pollutant <- c(mean_pollutant, na_removed)
  }
  result <- mean(mean_pollutant)
  return(round(result, 3)) 
}