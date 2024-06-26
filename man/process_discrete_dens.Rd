% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glm_scales.R
\name{process_discrete_dens}
\alias{process_discrete_dens}
\title{Obtain univariate densities}
\usage{
process_discrete_dens(dat, family, LHSs)
}
\arguments{
\item{dat}{data frame of observations}

\item{family}{families for the Y and Z distributions, and the copula. Should
be the same length as \code{formulas}}

\item{LHSs}{left-hand sides from \code{formulas}}
}
\description{
Ultimately should also work for ordinal and categorical cases
}
