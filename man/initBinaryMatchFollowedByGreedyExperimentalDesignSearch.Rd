% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binary_match_followed_by_greedy_search.R
\name{initBinaryMatchFollowedByGreedyExperimentalDesignSearch}
\alias{initBinaryMatchFollowedByGreedyExperimentalDesignSearch}
\title{Begin a Search for Binary Matching Followed by Greedy Switch Designs}
\usage{
initBinaryMatchFollowedByGreedyExperimentalDesignSearch(
  X,
  diff_method = FALSE,
  compute_dist_matrix = NULL,
  ...
)
}
\arguments{
\item{X}{The design matrix with $n$ rows (one for each subject) and $p$ columns 
(one for each measurement on the subject). This is the design matrix you wish 
to search for a more optimal design.}

\item{diff_method}{Once the subjects (i.e. row vectors) are paired, do we create a set of $n$/2 difference
vectors and feed that into greedy? If \code{TRUE}, this technically breaks the objective
function, but it is shown to have better performance. The default is thus \code{FALSE}.}

\item{compute_dist_matrix}{The function that computes the distance matrix between every two observations in \code{X}, 
its only argument. The default is \code{NULL} signifying euclidean squared distance optimized in C++.}

\item{...}{Arguments passed to \code{initGreedyExperimentalDesignObject}. It is recommended to set
\code{max_designs} otherwise it will default to 10,000.}
}
\value{
An object of type \code{binary_experimental_design} which can be further operated upon.
}
\description{
This method creates an object of type binary_then_greedy_experimental_design and will find optimal matched pairs which
are then greedily switched in order to further minimize a balance metric. You can then
use the function \code{resultsBinaryMatchThenGreedySearch} to obtain the randomized allocation vectors. For one column
in X, the matching just sorts the values to find the pairs trivially.
}
\author{
Adam Kapelner
}
