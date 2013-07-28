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
  \beta exp(-k * t^m) }
}
\examples{
growth <- weibull(0:10, 10, 0.5, 0.3, 0.5)
}

