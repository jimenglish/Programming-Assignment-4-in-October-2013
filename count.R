count <- function(cause = NULL) {
     ## Check that "cause" is non-NULL; else throw error
     ## Check that specific "cause" is allowed; else throw error
     ## Read "homicides.txt" data file
     ## Extract causes of death
     ## Return integer containing count of homicides for that cause
     
     ## Check non-NULL case and whether cause is in the allowed list
     allowed_causes <- c("asphyxiation","blunt force","other", "shooting", "stabbing", "unknown")
     
     if (is.null(cause)) {
          stop ("invalid cause")
     } else if (!(cause %in% allowed_causes)) {
          stop("invalid cause")
     }

     # Read homicides.txt data file
     homicides <- readLines("homicides.txt")
     
     # Extract causes of death
     r <- regexec("<dd>[Cc]ause: (.*?)</dd>", homicides)
     m <- regmatches(homicides,r)
     causes <- sapply(m, function(x) tolower(x[2]))
     
     ## Return integer containing count of homicides for that cause
     results <- length(na.omit(causes[causes==tolower(cause)]))
     results
}
