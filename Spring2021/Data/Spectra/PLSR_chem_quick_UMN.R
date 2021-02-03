###############################
#### Quick PLSR models ########
## AS 11/03/16 ################

library(pls)
allData <- read.csv("./R_input/spec_chem_fiber.csv")

## resample to make model run faster (max interval 20 nm) 
### and limit wavelength range to wvls sensitive to the chem compound of interest
spec_inter <- 20
allData <- allData[, c(1:6, seq(which(names(allData) %in% "X1200"), 
                              which(names(allData) %in% "X2400"), 
                              by = spec_inter))] 
### setup dataset 
dat <- data.frame(SampN = c(1:nrow(allData)))
dat$abbrev <- allData$abbrev ## optional info to keep
dat$NSC <- allData$nonstructural_perc ## select trait
dat$spec <- as.matrix(allData[, grepl("X", names(allData))]) ## add spectral data as matrix
dat <- na.exclude(dat) 

### PLSR 
mod <- plsr(NSC ~ spec, ncomp = 25, data = dat, validation = "LOO") 
 
validationplot(mod, val.type = "RMSEP", estimate = "CV")
validationplot(mod, val.type = "R2", estimate = "CV")

compi <- 12 ## select optimal no of components, RMSEP minimum, R2 maximum
# summary(mod)

### Modelstats ################################
b <- predplot(mod, ncomp = compi, which = "train")
a <- predplot(mod, ncomp = compi, which = "validation")

dat_predtrue <- data.frame(abbrev = character(nrow(dat)))
dat_predtrue$abbrev <- dat$abbrev
dat_predtrue$measured <- a[, colnames(a) == "measured"]
dat_predtrue$predicted_val <- a[, colnames(a) == "predicted"]
dat_predtrue$predicted_train <- b[, colnames(b) == "predicted"]

### R2 validation ####
mod_fit <- lm(measured ~ predicted_val, data = dat_predtrue)
summary(mod_fit) 

plot(measured ~ predicted_val, data = dat_predtrue)
abline(mod_fit)
abline(0, 1, lty = 2)

### Test if slope is sign diff from 1
mod1 <- nls(measured ~ k*predicted_val + d, data = dat_predtrue, start = list(k = 1, d = 0)) ## mod1 ... alternative mod, fixed slope at 1 and intercept at 0
mod0 <- nls(measured ~ predicted_val + d, data = dat_predtrue, start = list(d = 0)) ## mod0 ... our model, but intercept fixed at 0 (only look at deviation of slope)
anova (mod1, mod0) 

### Test if intercept is sign diff from 0
mod0d <- nls(measured ~ k*predicted_val, data = dat_predtrue, start = list(k = 1)) ## mod0 ... our model, but slope fixed at 1 (only look at dev of intercept)
anova (mod1, mod0d) ## we want no sign. diff

### Coefficients for predictions #####
coefNSC <- coef(mod, ncomp = compi, intercept = T)

#### RMSEP, root mean squared error of pred, in orig units #### 
rmse <- function(obs, pred) {sqrt(mean((obs-pred)^2))} 
(rm <- rmse(dat_predtrue$measured, dat_predtrue$predicted_val)) ### on average pred are x % off

#### Loadings plot, importance of wvls, can be improved by showing absolute vals
wvl <- as.numeric(substr(colnames(dat$spec), 2, nchar(colnames(dat$spec))))
loadingplot(mod,comps = compi, xaxt = "n", xlab = "wavelength")
axis(1, seq(0, length(wvl), by = 10), labels = seq(wvl[1], wvl[length(wvl)], length.out = 7))

### extract coefficients and look at them
(NSC_coef <- coef(mod, ncomp = compi, intercept = T))

#############################################
#### Predictions and spectral processing #### 
library(devtools) 
devtools::install_github("meireles/spectrolab") ### or from CRAN, new version coming soon
library(spectrolab)

dada <- read.csv("./R_input/spec_data_for_preds.csv", check.names = F)

dada_spec <- as.spectra(dada, name_idx = 1) ### make spectra object
plot_interactive(dada_spec) ### look at spectra

spec_vn <- normalize(dada_spec) ### model is build with vector normalized spectra, length of each spectrum =  unity, to remove illumination differences
plot(spec_vn[1:10], col = rainbow(10))
spec_pred <- resample(spec_vn, new_wvls = seq(1200, 2400, 20))

meta(spec_pred, "NSC") <- reflectance(spec_pred) %*% coefNSC[-1] + coefNSC[1]

meta(spec_pred, "NSC")
preds <- as.data.frame(spec_pred)
