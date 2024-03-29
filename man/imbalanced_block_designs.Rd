% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/complete_randomization.R
\name{imbalanced_block_designs}
\alias{imbalanced_block_designs}
\title{Implements unequally allocated block designs}
\usage{
imbalanced_block_designs(n, prop_T, B, r, form = "one_zero")
}
\arguments{
\item{n}{number of observations}

\item{prop_T}{the proportion of treatments needed}

\item{B}{the number of blocks}

\item{r}{number of randomized designs you would like}

\item{form}{Which form should it be in? The default is \code{one_zero} for 1/0's or \code{pos_one_min_one} for +1/-1's.}
}
\value{
a matrix where each column is one of the \code{r} designs
}
\description{
For debugging, you can use \code{set.seed}
to be assured of deterministic output. The following quantities
in this design must be integer valued or an error will be thrown: 
  n_B := n / B and n_B * prop_T
}
\author{
Adam Kapelner
}
