% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_params.R
\name{adj_vars}
\alias{adj_vars}
\title{Adjust values of copula parameters individually}
\usage{
adj_vars(
  cop_pars,
  strong = character(0),
  weak = character(0),
  factor = c(5, 0.2)
)
}
\arguments{
\item{cop_pars}{list of copula parameters, as output by \code{gen_cop_pars()}}

\item{strong, weak}{character vectors of variables to make strong or weak}

\item{factor}{vector of two real values, to multiply coefficients by}
}
\description{
Adjust values of copula parameters individually
}
