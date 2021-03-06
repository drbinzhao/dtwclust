% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Distmat.R
\docType{class}
\name{Distmat-class}
\alias{Distmat-class}
\alias{Distmat}
\title{Distance matrix}
\description{
Reference class that is used internally for PAM centroids when both \code{pam.precompute} and
\code{pam.sparse} are \code{FALSE} (see \link{tsclust-controls}).
}
\section{Fields}{

\describe{
\item{\code{distmat}}{A distance matrix.}

\item{\code{series}}{Time series list.}

\item{\code{distfun}}{The distance function to calculate the distance matrix.}

\item{\code{dist_args}}{Arguments for the distance function.}

\item{\code{id_cent}}{Indices of the centroids (if any).}
}}

\section{Methods}{

\describe{
\item{\code{initialize(..., distmat, series, distance, control, error.check = TRUE)}}{Initialization based on needed parameters}
}}

