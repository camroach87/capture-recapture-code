############################### PREAMBLE ################################
# PROGRAM: main
# CODER: Cameron Roach
# DATE: 24/2/2014
# DESCRIPTION: Sets directories and calls programs

rm(list=ls())

require(lubridate)
require(ggplot2)
require(plyr)
require(reshape2)
require(boot)
require(KernSmooth)
require(foreach)

if (.Platform$OS.type == "windows") {
  require(snow)
  require(doSNOW)
} else if (.Platform$OS.type == "unix") {
  require(multicore)
}



#### Set directories ####
dataDir <- "./data"
srcDir <- "./src"
outputDir <- "./output"
plotDir <- "./plots"



##### Source functions ####
source(file.path(srcDir,"mkPopMatrix.R"))     # population matrix functions
source(file.path(srcDir,"mkCaptureMatrix.R")) # capture matrix functions
source(file.path(srcDir,"getStats.R"))        # calculates various statistics
source(file.path(srcDir,"getEstimators.R"))   # estimator functions