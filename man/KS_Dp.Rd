% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/KS_Dp.R
\name{KS_Dp}
\alias{KS_Dp}
\title{KS_Dp}
\usage{
KS_Dp(x, y)
}
\arguments{
\item{x}{a vector or matrix of real numbers}

\item{y}{a vector or matrix of real numbers}
}
\value{
a vector of numbers with length equal to the number of trials (N)
}
\description{
Calculates the one-sided KS statistic given vectors for x and y
}
\examples{
KS_Dp(c(1,2,3,4,5),c(1,2,3,4,4))
KS_Dp(matrix(runif(100),ncol=7),matrix(runif(100),ncol=7))

}

