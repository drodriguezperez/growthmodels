\name{negativeExponential}
\alias{negativeExponential}
\title{Negative exponential growth model}
\usage{
  negativeExponential(t, alpha, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{k}{growth rate}
}
\description{
  Computes the negative exponential growth model \deqn{
  y(t) = \alpha ( 1 - exp(-kt))}
}
\examples{
growth <- negativeExponential(0:10, 1, .3)
}
\references{
  [1] M.S. Philip, "Measuring trees and forests". 2nd
  edition.  CAB International, 1994
}

