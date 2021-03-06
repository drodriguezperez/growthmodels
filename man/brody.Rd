% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brody.R
\name{brody}
\alias{brody}
\alias{brody.inverse}
\title{Brody growth model}
\usage{
brody(t, alpha, w0, k)

brody.inverse(x, alpha, w0, k)
}
\arguments{
\item{t}{time}

\item{alpha}{upper asymptote}

\item{w0}{the value at t = 0}

\item{k}{growth rate}

\item{x}{size}
}
\description{
Computes the Brody growth model and its inverse
\deqn{ y(t) = \alpha - (\alpha - w_0) exp(- k t) }{ y(t) = \alpha - (\alpha - w_0) * exp(- k * t) }
}
\examples{
growth <- brody(0:10, 10, 5, 0.3)

# Calculate inverse function
time <- brody.inverse(growth, 10, 5, 0.3)

}
\references{
M. M. Kaps, W. O. W. Herring, and W. R. W. Lamberson, "Genetic and
environmental parameters for traits derived from the Brody growth curve and
their relationships with weaning weight in Angus cattle.," Journal of
Animal Science, vol. 78, no. 6, pp. 1436-1442, May 2000.
}
\author{
Daniel Rodriguez
}
