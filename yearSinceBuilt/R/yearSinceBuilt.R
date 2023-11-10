#' Year Since Built
#'
#' Add new variable year_since_built to apt_buildings dataset. It can also be edited when the new year comes.
#' For example, just run the function again when the year 2024 arrives and replace the input with 2024.
#'#'
#' @param this_year a integer. This should be the number of the current AD year, for example 2023.
#' @return a selected dataset that only contains year_built and year_since_built in the apt_buildings for visual.
#'
#' @import datateachr
#'
#' @export
#'
#' @examples
#' # Example usage of the function
#' library(datateachr)
#' Example1 <- yearSinceBuilt(2023)
#' Example2 <- yearSinceBuilt(2024)


yearSinceBuilt <- function(this_year) {
  # Check if the input_year is a numeric value
  if (!is.numeric(this_year)) {
    stop("Error: Input year must be a numeric value.")
  }

  # Check if the input is an integer
  if (!all(as.integer(this_year) == this_year)) {
    stop("Error: Input year must be an integer.")
  }

  # Calculate the year_since_built variable
  apt_buildings$year_since_built <- this_year - apt_buildings$year_built

  # Check if year_since_built has been added to the dataset
  if (!("year_since_built" %in% names(apt_buildings))) {
    stop("Error: 'year_since_built' variable was not successfully added to the dataset.")
  }

  return(apt_buildings[, c("year_built", "year_since_built"), drop = FALSE])
}

