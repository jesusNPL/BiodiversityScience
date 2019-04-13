
# Function that return descriptive statistics from a numeric vector 
Descriptives <- function(x)list(
  N.with.NA.removed = length(x[!is.na(x)]),
  Count.of.NA = length(x[is.na(x)]),
  Mean = mean(x, na.rm = TRUE),
  Median = median(x, na.rm = TRUE),
  Max.Min = range(x, na.rm = TRUE),
  Range = max(x, na.rm = TRUE) - min(x, na.rm = TRUE),
  Variance = var(x, na.rm = TRUE),
  Std.Dev = sd(x, na.rm = TRUE),
  Coeff.Variation.Prcnt = sd(x, na.rm = TRUE)/mean(x, na.rm = TRUE)*100,
  CV = sum(x, na.rm = TRUE)*(sd(x, na.rm = TRUE)/mean(x, na.rm = TRUE))/length(x), # Wang et al. 2018
  Std.Error = sd(x, na.rm = TRUE)/sqrt(length(x[!is.na(x)])),
  Quantile = quantile(x, na.rm = TRUE)
)


# Calculate some diversity metrics based on spectra data
require(vegan)
diversities <- function(x)list(
  H = diversity(x, index = "shannon", MARGIN = 1, base = exp(1)),
  simp = diversity(x, index = "simpson"),
  invsimp = diversity(x, index = "inv"), 
  J = diversity(x, index = "simpson")/log(apply(x > 0, 1, sum)) # Pilou evenness (J)
)
