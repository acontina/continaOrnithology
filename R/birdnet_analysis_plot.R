birdnet_analysis_plot <- function(RD, CTOF) {
  birdnet_format(results.directory = RD, timezone = 'GMT')
  dat <- birdnet_gather(results.directory = RD, formatted = TRUE)
  bn.dat <- add_time_cols(dt = dat, tz.recorder = 'GMT', tz.local = 'GMT')
  
  bn.dat.cutoff.plot <- bn.dat %>% filter(confidence > CTOF)
  dt.bar <- birdnet_barchart(data = bn.dat.cutoff.plot, interactive = FALSE)
  dt.bar.df <- as.data.frame(dt.bar$data)
  
  DETECTION.PLOT <- ggplot(data = dt.bar.df, aes(x = julian.date, y = N, color = common_name)) +
    geom_line() +
    geom_point() +
    theme(legend.position = "none") +
    facet_wrap(facets = vars(common_name))
  
  print(DETECTION.PLOT)
}

# Example usage
# RD <- "C:/Users/user/Desktop/R/BNET_UTRGV/REC_02/RES"
# CTOF <- 0.7
# birdnet_analysis_plot(RD, CTOF)


