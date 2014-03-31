\name{stannard}
\alias{stannard}
\alias{stannard.inverse}
\title{Stannard growth model}
\usage{
stannard(t, alpha, beta, k, m)

stannard.inverse(x, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{beta}{growth displacement}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
Computes the Stannard growth model \deqn{ y(t) = \alpha
\left[ 1 + exp(-(\beta + k t)/m) \right]^{-m}}{ y(t) =
\alpha *( 1 + exp(-(beta + k * t)/m))^(-m) }
}
\examples{
growth <- stannard(0:10, 1, .2, .1, .5)
# Calculate inverse function
time <- stannard.inverse(growth, 1, .2, .1, .5)
}
\author{
Daniel Rodriguez Perez
}
\references{
A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear growth
models for modeling oil palm yield growth," Journal of
Mathematics and Statistics, vol. 1, no. 3, p. 225, 2005.
}

