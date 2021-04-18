#' select07
#'
#' Select weakly correlated variables based on univariate importance based on \insertCite{Dormann2013}{mecofun}. Univariate variable importance is based on AIC. Variable importance can also be pre-defined by hand.
#' 
#' @importFrom Rdpack reprompt
#' 
#' @param X Matrix or data.frame containing the predictor variables
#' @param y vector of response variable
#' @param family a description of the error distribution and link function to be used in the model.
#' @param univar a character string indicating the regression method to be used for estimating univariate importance. Must be one of the strings "glm1", "glm2" (default), or "gam". "glm1" will estimate a generalised linear model (GLM) with a linear predictor, "glm2" a GLM with a second order polynomial, and "gam" a generalised additive model (GAM) with smooting splines 
#' @param threshold a numeric value indicating the absolute value of the correlation coefficient above which the paired correlation are judged as problematic.
#' @param method a character string indicating which correlation coefficient (or covariance) is to be computed. One of "spearman" (default), "kendall", or "pearson".
#' @param sequence an optional character vector providing the order of importance of the predictors. This overrides the univar method.
#' 
#' @return A list with three objects: "AIC" a numeric vector containing the AIC for the univariate models, "cor_mat" containing the correlation matrix, and "pred_sel" a character vector with the names of the remaining, weakly correlated variables. The variables are ordered according to their univariate variable importance (starting with most important variable).
#' 
#' @examples 
#' data(Anguilla_train)
#' select07(X=Anguilla_train[,3:10], y=Anguilla_train[,2])
#' 
#' @references
#' \insertAllCited{}
#' 
#' @export
select07_v2 <- function(X, y, family = "binomial", univar = "glm2", 
                        threshold = 0.7, method = "spearman", sequence = NULL)
{
  # selects variables based on removing correlations > 0.7, retaining those
  # variables more important with respect to y
  # Order of importance can be provided by the character vector 'sequence'
  
  # 1. step: cor-matrix
  # 2. step: importance vector
  # 3. step: identify correlated pairs
  # 4. step: in order of importance: remove collinear less important variable,
  #           recalculate correlation matrix a.s.f.
  
  var.imp <- function (variable, response, univar = univar, family = "gaussian")
  {
    # calculates the univariate (=marginal) importance of a variable for a response
    if(univar == "glm1")
    {
      fm.glm <- glm(response ~ variable, family = family)
      summary(fm.glm)$aic
    } else
    if(univar == "glm2")
    {
      fm.glm <- glm(response ~ poly(variable, 2), family = family)
      summary(fm.glm)$aic
    } else  
    if(univar == "gam")
    {
      fm.gam <- mgcv::gam(response ~ s(variable, k = 4), family = family)
      AIC(fm.gam)
    } else return(F)
  }
  
  cm <- cor(X, method = method)
  
  if (is.null(sequence)) {
    a<-try(var.imp(X[, 1], y, univar = univar))
    if (is.numeric(a)!=1) {stop("invalid univar method")}
    
    imp <- apply(X, 2, var.imp, response = y, family = family, univar = univar) #importance as AIC: the lower the better!
    sort.imp <- names(sort(imp)) 
  } else
  { sort.imp <- sequence }
  
  pairs <- which(abs(cm) >= threshold, arr.ind=T) # identifies correlated variable pairs
  index <- which(pairs[, 1] == pairs[, 2])           # removes entry on diagonal
  pairs <- pairs[-index, ]                        # -"-
  
  exclude <- NULL
  for (i in 1:length(sort.imp))
  {
    if ((sort.imp[i] %in% row.names(pairs))&
        ((sort.imp[i] %in% exclude) == F)) {
      cv <- cm[setdiff(row.names(cm), exclude), sort.imp[i]]
      cv <- cv[setdiff(names(cv), sort.imp[1:i])]
      exclude <- c(exclude,names(which((abs(cv) >= threshold)))) }
  }
  
  pred_sel <- sort.imp[!(sort.imp %in% unique(exclude)), drop = F]
  return(list(AIC = sort(imp), cor_mat = cm, pred_sel = pred_sel))
}



