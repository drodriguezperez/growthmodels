\name{loglogistic}
\alias{loglogistic}
\title{Log-logistic growth model}
\usage{
  loglogistic(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the Log-logistic growth model \deqn{ y(t) =
  \frac{\alpha}{1 + \beta exp(-k log(t)}}{ y(t) = \alpha/(1
  + \beta * exp(-k * log(t))}
}
\examples{
growth <- loglogistic(0:10, 10, 0.5, 0.3)
}
\references{
  A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear
  growth models for modeling oil palm yield growth,"
  Journal of Mathematics and Statistics, vol. 1, no. 3, p.
  225, 2005.
}

