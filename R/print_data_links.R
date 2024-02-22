print_data_links <- function(data_links) {
  data.link = "Use the link/s below to access the acoustic data stored in GitHub"
  cat(green(data.link), "\n")
  cat(red(data_links), "\n")
}

# Example usage
#data_links <- "https://github.com/acontina/continaOrnithology/tree/master/data"
#print_data_links(data_links)
