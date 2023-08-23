#' Run the BLS Viewer
#'
#' This function runs the BLS (US Bureau of Labor Statistics) data viewer.
#' Currently this viewer allows the user to select and view unemployment data.
#' The data is static as the package blsAPI is no longer available on CRAN.
#' To install the latest version of blsBandit and the blsAPI with update data
#' functionality install them from github.
#' blsAPI<https://github.com/mikeasilva/blsAPI>
#' blsBandit<https://github.com/Jeremy-Fitzpatrick/blsBandit>
#' The blsBandit package is not affiliated with the Bureau of Labor Statistics
#' or US Government.
#' @keywords BLS Unemployment
#' @export
#' @examples
#' # Run the BLS data viewer.
#' if(interactive()){blsViewer()}
#' @return No return value. The user can save charts from within the interface.
blsViewer <- function() {
  shinyApp(ui = blsViewUI, server = blsViewerServer)
}
