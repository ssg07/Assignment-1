complete <- function( directory, id = 1:332){
  filelist <- list.files(path = directory , pattern = ".csv", full.names = TRUE)
  value <- numeric()
  
  for(i in id){
    data <- read.csv(filelist[i])
    value <- c(value, sum(complete.cases(data)))
  
  }
  data.frame(id, value)
}
