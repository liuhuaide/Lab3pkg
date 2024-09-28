#' Wiki Graph Dataset
#'
#' A dataset containing the edges of a directed graph with weights.
#'
#' This dataset represents a directed graph where each row corresponds to an edge.
#'
#' @format A data frame with the following columns:
#' \describe{
#'   \item{v1}{Source vertex of the edge.}
#'   \item{v2}{Target vertex of the edge.}
#'   \item{w}{Weight of the edge.}
#' }
#'
#' @source \url{https://en.wikipedia.org/wiki/Graph}
"wiki_graph"


library(roxygen2)
roxygen2::roxygenize()
devtools::load_all()
