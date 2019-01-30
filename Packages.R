
#Required R packages (will install them automatically if not yet installed)
if ( ! ("ape" %in% installed.packages())) {install.packages("ape", dependencies = T)}
if ( ! ("phytools" %in% installed.packages())) {install.packages("phytools", dependencies = T)}
if ( ! ("picante" %in% installed.packages())) {install.packages("picante", dependencies = T)}
if ( ! ("geiger" %in% installed.packages())) {install.packages("geiger", dependencies = T)}
if ( ! ("mvMORPH" %in% installed.packages())) {install.packages("mvMORPH", dependencies = T)}
if ( ! ("OUwie" %in% installed.packages())) {install.packages("OUwie", dependencies = T)}
if ( ! ("adephylo" %in% installed.packages())) {install.packages("adephylo", dependencies = T)}
if ( ! ("phylobase" %in% installed.packages())) {install.packages("phylobase", dependencies = T)}
if ( ! ("pez" %in% installed.packages())) {install.packages("pez", dependencies = T)}
if ( ! ("DAMOCLES" %in% installed.packages())) {install.packages("DAMOCLES", dependencies = T)}
if ( ! ("diversitree" %in% installed.packages())) {install.packages("diversitree", dependencies = T)}
if ( ! ("BAMMtools" %in% installed.packages())) {install.packages("BAMMtools", dependencies = T)}
if ( ! ("RPANDA" %in% installed.packages())) {install.packages("RPANDA", dependencies = T)}
if ( ! ("laser" %in% installed.packages())) {install.packages("laser", dependencies = T)}
if ( ! ("DDD" %in% installed.packages())) {install.packages("DDD", dependencies = T)}
if ( ! ("coda" %in% installed.packages())) {install.packages("coda", dependencies = T)}

#Load packages
library(ape)
library(phytools)
library(picante)
library(geiger)
library(mvMORPH)
library(OUwie)
library(adephylo)
library(phylobase)
library(pez)
library(DAMOCLES)
library(diversitree)
library(BAMMtools)
library(RPANDA)
library(laser)
library(DDD)
library(coda)
