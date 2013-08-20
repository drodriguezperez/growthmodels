\name{generalisedLogistic}
\alias{generalisedLogistic}
\title{Generalised Logistic growth model}
\usage{
  generalisedLogistic(t, A, U, k, beta, t0)
}
\arguments{
  \item{t}{time}

  \item{A}{the lower asymptote}

  \item{U}{the upper asymptote}

  \item{k}{growth range}

  \item{beta}{growth range}

  \item{t0}{time shift}
}
\description{
  Computes the Generalised Logistic growth model \deqn{
  y(t) = A + \frac{U - A}{1 + \beta exp(-k (t- t_0))}}
}
\examples{
growth <- generalisedLogistic(0:10, 5, 10, 0.3, 0.5, 3)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

