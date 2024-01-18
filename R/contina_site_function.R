# FUNCTION to import data from multiple eBird hotspots
# Define a function that takes a list of locations and a function to apply
contina_site_function <- function(locations, rebird_function) {

  # Create an empty data frame to store the results
  result_list <- data.frame()

  # Loop through each character [i] and apply the function
  for (char in locations) {
    # Apply the function to the current character
    result <- rebird_function(char)
    # Store the result in a list
    result_list <- rbind(result_list, data.frame(result))
  }

  return(result_list)
}

rebird_function <- function(char) {
  # Original R rebird function on the character [i]
  result <- rebird::ebirdregion(char)
  return(result)
}
