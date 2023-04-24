
gotcha <- function(x, ngroups) { 
  
  vec <- numeric(length = x)
  
  got <- NULL
  
  for(i in 1:length(vec)) { 
    
    s <- sample(1:ngroups, 1, replace = TRUE)
    
    vec[i] <- s
    
    got <- vec[length(vec)]
    
  }
  
  hist(vec, main = "Gotcha", xlab = "Group number", cex = 2)
  abline(v = got, col = "red", lwd = 5)
  
}


gotcha(x = 1000, ngroups = 6)
