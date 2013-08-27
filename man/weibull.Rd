\name{weibull}
\alias{weibull}
\title{Weibull growth model}
\usage{
  weibull(t, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
  Computes the Weibull growth model \deqn{ y(t) = \alpha -
  \beta exp(-k * t^m) }{ y(t) = \alpha - \beta * exp(-k *
  t^m) }
}
\examples{
growth <- weibull(0:10, 10, 0.5, 0.3, 0.5)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

