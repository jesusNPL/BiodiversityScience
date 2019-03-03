mean <- 10
sd <- 1
time_span <- 100
prob <- 0.2
BMbranching_process <- function(mean, sd, time_span, prob){
traits <- matrix(0, 1, time_span)
traits[1, 1] <- mean
branch_n <- 1
for(i in 2:time_span){
  print(i)
    for(j in 1:branch_n){
    if(runif(n = 1, 0, 1) < prob){
      traits <- rbind(traits, traits[j, ])
      branch_n <- branch_n + 1
      traits[c(j, branch_n), i] <- traits[j, i - 1] + rnorm(2, 0 ,sd)
      }else{
        traits[j,i] <- traits[j, i - 1] + rnorm(1, 0, sd)
      }
  }
}
traits
}   
time_span <- 1200
x <- BMbranching_process(mean = mean, sd = sd, time_span = time_span, prob = 0.002)
quartz()
plot.new()
plot.window(xlim = c(0, time_span), ylim = c(-60, 60))
for(i in 2:ncol(x)){
  apply(x[, 1:i], 1, lines)
}
apply(x, 1, lines)
hist(x)
dim(x)
