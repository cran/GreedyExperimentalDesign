% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greedy_multiple_kernel_search.R
\name{initGreedyMultipleKernelExperimentalDesignObject}
\alias{initGreedyMultipleKernelExperimentalDesignObject}
\title{Begin A Greedy Pair Multiple Kernel Switching Search}
\usage{
initGreedyMultipleKernelExperimentalDesignObject(
  X = NULL,
  max_designs = 10000,
  objective = "added_pct_reduction",
  kernel_pre_num_designs = 2000,
  kernel_names = NULL,
  Kgrams = NULL,
  maximum_gain_scaling = 1.1,
  kernel_weights = NULL,
  wait = FALSE,
  start = TRUE,
  max_iters = Inf,
  semigreedy = FALSE,
  diagnostics = FALSE,
  num_cores = 1,
  seed = NULL
)
}
\arguments{
\item{X}{The design matrix with $n$ rows (one for each subject) and $p$ columns 
(one for each measurement on the subject). This is the design matrix you wish 
to search for a more optimal design. We will standardize this matrix by column internally.}

\item{max_designs}{The maximum number of designs to be returned. Default is 10,000. Make this large 
so you can search however long you wish as the search can be stopped at any time by
using the \code{\link{stopSearch}} method}

\item{objective}{The method used to aggregate the kernel objective functions together. Default is "added_pct_reduction".}

\item{kernel_pre_num_designs}{How many designs per kernel to run to explore the space of kernel objective values. Default is 2000.}

\item{kernel_names}{An array with the kernels to compute with default parameters. Must have elements in the following set:
"mahalanobis", "poly_s" where the "s" is a natural number 1 or greater,
"exponential", "laplacian", "inv_mult_quad", "gaussian". Default is \code{NULL} to
indicate the kernels are specified manually using the \code{Kgrams} parameter.}

\item{Kgrams}{A list of M >= 1 elements where each is a \code{n x n} matrix whose
entries are the evaluation of the kernel function between subject i and subject j. 
Default is \code{NULL} to indicate this was specified using the convenience parameter 
\code{kernel_names}.}

\item{maximum_gain_scaling}{This controls how much the percentage of possible improvement on a kernel objective function
should be scaled by. The minimum is 1 which allows for designs that could potentially have >=100%
improvement over original. We recommend 1.1 which means that a design that was found to be the best
of the \code{kernel_pre_num_designs} still has 1/1.1 = 9\% room to grow making it highly unlikely that
any design could be >= 100\%.}

\item{kernel_weights}{A vector with positive weights (need not be normalized) where each element represents the weight of 
each kernel. The default is \code{NULL} for uniform weighting.}

\item{wait}{Should the \code{R} terminal hang until all \code{max_designs} vectors are found? The 
deafult is \code{FALSE}.}

\item{start}{Should we start searching immediately (default is \code{TRUE}).}

\item{max_iters}{Should we impose a maximum number of greedy switches? The default is \code{Inf} which a flag 
for ``no limit.''}

\item{semigreedy}{Should we use a fully greedy approach or the quicker semi-greedy approach? The default is
\code{FALSE} corresponding to the fully greedy approach.}

\item{diagnostics}{Returns diagnostic information about the iterations including (a) the initial starting
vectors, (b) the switches at every iteration and (c) information about the objective function
at every iteration (default is \code{FALSE} to decrease the algorithm's run time).}

\item{num_cores}{The number of CPU cores you wish to use during the search. The default is \code{1}.}

\item{seed}{The set to set for deterministic output. This should only be set if \code{num_cores = 1} otherwise
the output will not be deterministic. Default is \code{NULL} for no seed set.}
}
\value{
An object of type \code{greedy_experimental_design_search} which can be further operated upon
}
\description{
This method creates an object of type greedy_multiple_kernel_experimental_design and will immediately initiate
a search through $1_{T}$ space for forced balance designs. For debugging, you can use set the \code{seed}
parameter and \code{num_cores = 1} to be assured of deterministic output.
}
\examples{
 \dontrun{
	library(MASS)
	data(Boston)
 #pretend the Boston data was an experiment setting 
	#first pull out the covariates
 X = Boston[, 1 : 13] 
 #begin the greedy design search
	ged = initGreedyMultipleKernelExperimentalDesignObject(X, 
		max_designs = 1000, num_cores = 3, kernel_names = c("mahalanobis", "gaussian"))
	#wait
	ged
	}
}
\author{
Adam Kapelner
}
