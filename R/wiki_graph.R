#' A test graph.
#'
#' @format A data frame with 3 columns.
#' \describe{
#'   \item{v1}{vertex 1}
#'   \item{v2}{vertex 2}
#'   \item{w}{edge weight}
#'   ...
#' }
#' @source \url{https://raw.githubusercontent.com/STIMALiU/AdvRCourse/master/2020_LecturesLabs/732A94_AdvancedRHT2020_Lab03.pdf}
"wiki_graph"
wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

