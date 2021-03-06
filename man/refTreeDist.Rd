% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics.R
\name{refTreeDist}
\alias{refTreeDist}
\title{Metric function for comparing a reference \code{phylo} to \code{multiPhylo} input}
\usage{
refTreeDist(refTree, trees, lambda = 0, return.lambda.function = FALSE,
  emphasise.tips = NULL, emphasise.weight = 2)
}
\arguments{
\item{refTree}{a tree of class \code{phylo}, the "reference tree".}

\item{trees}{an object of the class \code{multiPhylo} containing the trees to be compared to the reference tree}

\item{lambda}{a number in [0,1] which specifies the extent to which topology (default, with lambda=0)  or branch lengths (lambda=1) are emphasised. This argument is ignored if \code{return.lambda.function=TRUE}.}

\item{return.lambda.function}{If true, a function that can be invoked with different lambda values is returned.
This function returns the vector of metric values for the given lambda.}

\item{emphasise.tips}{an optional list of tips whose entries in the tree vectors should be emphasised. Defaults to \code{NULL}.}

\item{emphasise.weight}{applicable only if a list is supplied to \code{emphasise.tips}, this value (default 2) is the number by which vector entries corresponding to those tips are emphasised.}
}
\value{
The vector of distances, where entry i corresponds to the distance between the i'th tree and the reference tree, or a function that produces the vector of distances given a value for lambda.
}
\description{
Comparison of a single reference tree to a list of trees using the Kendall Colijn metric. Output is given as a vector of distances from the reference tree.
}
\examples{

## generate a single reference tree with 6 tips
refTree <- rtree(6)

## generate 10 random trees, each with 6 tips
trees <- rmtree(10,6)

## find the distances from each of the 10 random trees to the single reference tree
refTreeDist(refTree,trees)

}
\author{
Michelle Kendall \email{michelle.louise.kendall@gmail.com}
}
