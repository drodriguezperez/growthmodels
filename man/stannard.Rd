\name{stannard}
\alias{stannard}
\title{Stannard growth model}
\usage{
  stannard(t, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{a parameter that controls the size at t = 0}

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
}
\references{
  A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear
  growth models for modeling oil palm yield growth,"
  Journal of Mathematics and Statistics, vol. 1, no. 3, p.
  225, 2005.
}

