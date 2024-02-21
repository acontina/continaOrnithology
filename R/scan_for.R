scan_for <- function(dat, name) {
  dat[dat$common_name == name, ]
}

# Example not run
# birdnet_format(results.directory        = 'C:/Users/user/Desktop/R/BNET_UTRGV/REC_02/RES',timezone = 'GMT')
# dat <- birdnet_gather(results.directory = 'C:/Users/user/Desktop/R/BNET_UTRGV/REC_02/RES',formatted = TRUE)
# search <- scan_for(dat, "Osprey")
# search