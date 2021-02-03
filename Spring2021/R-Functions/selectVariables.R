# Function adapted from https://damariszurell.github.io/HU-GCIB/3_SDM_intro.html

selectBelow07 <- function(pred_names, response_name, data, cor_mat = NULL, threshold = 0.7){
  # Function for calculating AIC - we use univariate GLMs with linear and quadratic terms
  var.imp <- function (predictor, response){
    AIC(glm(response ~ predictor + I(predictor^2), binomial))
  }
  # Calculate AIC for all predictor variables
  aic_imp <- apply(data[pred_names], 2, var.imp, response = data[, response_name])
  # Names of sorted variables
  sort_imp <- names(sort(aic_imp))
  # Calculate correlation matrix if not provided in function call
  if (is.null(cor_mat)){
    cor_mat <- cor(data[pred_names], method = 'spearman')
  }
  # Identifies correlated variable pairs:
  diag(cor_mat)=NA
  pairs <- which(abs(cor_mat) >= threshold, arr.ind = T) 
  # Identify which variables should be excluded
  exclude <- NULL
  for (i in 1:length(sort_imp))
  {
    if ((sort_imp[i] %in% row.names(pairs))&
        ((sort_imp[i] %in% exclude) == F)) {
      cv <- cor_mat[setdiff(row.names(cor_mat),exclude), sort_imp[i]]
      cv <- cv[setdiff(names(cv),sort_imp[1:i])]
      exclude <- c(exclude,names(which((abs(cv) >= threshold)))) 
    }
  }
  # Select set of weakly correlated predictors:
  pred_sel <- sort_imp[!(sort_imp %in% exclude)]
  # Return list with AIC, correlation matrix, and final predictors:
  return(list(AIC = sort(aic_imp), cor_mat = cor_mat, pred_sel = pred_sel))
}