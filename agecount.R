agecount <- function(age = NULL) {
     ## Check that "age" is non-NULL; else throw error
     ## Read "homicides.txt" data file
     ## Extract ages of victims; ignore records where no age is
     ## given
     ## Return integer containing count of homicides for that age
     
     ## Check non-NULL case and whether cause is in the allowed list
     
     if (is.null(age)) {
          stop ("invalid age")
     }
     
     # Read homicides.txt data file
     homicides <- readLines("homicides.txt")
     
     # Extract ages of victims
     r <- regexec("([0-9]+) years old</dd>", homicides)
     m <- regmatches(homicides,r)
     ages <- sapply(m, function(x) tolower(x[2]))
     ages <- as.numeric(ages)
     
     ## Return integer containing count of homicides for that cause
     results <- length(na.omit(ages[ages==age]))
     results
}
