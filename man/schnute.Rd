\name{schnute}
\alias{schnute}
\title{Schnute growth model}
\usage{
  schnute(t, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{a parameter that controls the size at t = 0}

  \item{beta}{growth displacement}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
  Computes the Schnute growth model \deqn{ y(t) = \left[
  \alpha + \beta exp(k t) \right]^m }{ y(t) = (\alpha +
  \beta * exp(k * t))^m }
}
\examples{
growth <- schnute(0:10, 10, 5, .5, .5)
}
\references{
  A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear
  growth models for modeling oil palm yield growth,"
  Journal of Mathematics and Statistics, vol. 1, no. 3, p.
  225, 2005.
}

