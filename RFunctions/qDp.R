
qDp <- function(tree, comm, q = 2){
  ed.list <- evol.distinct(tree)
  out <- numeric(nrow(comm))
  
  for (i in 1:nrow(comm)){
    ed.tmp <- ed.list[match(colnames(comm[i, comm[i, ] > 0]), as.character(ed.list$Species)), ]
    l <- ed.tmp$w/sum(ed.tmp$w)
    out[i] <- sum(l^q)^(1/(1-q))
    
  }
  out	
}
