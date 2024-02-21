convert_timestamp <- function(timestamp.birdnet) {
  mintras <- timestamp.birdnet / 60
  decimals.split <- as.data.frame(do.call(rbind, strsplit(as.character(mintras), "\\.")))
  rec.minutes <- as.numeric(decimals.split$V1)
  dec.int <- as.numeric(decimals.split$V2)
  rec.seconds <- dec.int / 100 * 60
  print(rec.minutes)
  print(rec.seconds)
}

# Example usage
# timestamp.birdnet <- 3837 # Example timestamp
# convert_timestamp(timestamp.birdnet)