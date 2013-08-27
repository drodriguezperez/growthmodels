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
  y(t) = \alpha ( 1 - exp(-k t))}{ y(t) = \alpha * ( 1 -
  exp(-k * t))}
}
\examples{
growth <- negativeExponential(0:10, 1, .3)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

