birdnet_search <- function(RD, search.name) {
  birdnet_format(results.directory = RD, timezone = 'GMT')
  dat <- birdnet_gather(results.directory = RD, formatted = TRUE)
  bn.dat <- add_time_cols(dt = dat, tz.recorder = 'GMT', tz.local = 'GMT')
  
  scan.for <- bn.dat[bn.dat$common_name == search.name, ]
  print(scan.for)
}

# Example usage
# RD <- "C:/Users/user/Desktop/R/BNET_UTRGV/REC_02/RES"
# search.name <- "character"
# birdnet_search(RD, search.name)
