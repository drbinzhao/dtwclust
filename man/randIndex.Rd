% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dtwclust-methods.R
\docType{methods}
\name{randIndex}
\alias{randIndex}
\alias{randIndex,dtwclust,ANY-method}
\alias{randIndex,dtwclust,ANY}
\alias{randIndex,ANY,dtwclust-method}
\alias{randIndex,ANY,dtwclust}
\alias{randIndex,dtwclust,dtwclust-method}
\alias{randIndex,dtwclust,dtwclust}
\title{Compare partitions}
\usage{
\S4method{randIndex}{dtwclust,ANY}(x, y, correct = TRUE,
  original = !correct)

\S4method{randIndex}{ANY,dtwclust}(x, y, correct = TRUE,
  original = !correct)

\S4method{randIndex}{dtwclust,dtwclust}(x, y, correct = TRUE,
  original = !correct)
}
\arguments{
\item{x, y, correct, original}{See \code{\link[flexclust:randIndex]{flexclust::randIndex()}}.}
}
\description{
No longer supported directly in \pkg{dtwclust}. Please refer to \code{\link[=cvi]{cvi()}}
}
