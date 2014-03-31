\name{loglogistic}
\alias{loglogistic}
\alias{loglogistic.inverse}
\title{Log-logistic growth model}
\usage{
loglogistic(t, alpha, beta, k)

loglogistic.inverse(x, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
Computes the Log-logistic growth model \deqn{ y(t) =
\frac{\alpha}{1 + \beta exp(-k log(t)}}{ y(t) = \alpha/(1 +
\beta * exp(-k * log(t))}
}
\examples{
growth <- loglogistic(0:10, 10, 0.5, 0.3)
# Calculate inverse function
time <- loglogistic.inverse(growth, 10, 0.5, 0.3)
}
\references{
A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear growth
models for modeling oil palm yield growth," Journal of
Mathematics and Statistics, vol. 1, no. 3, p. 225, 2005.
}

