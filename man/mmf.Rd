\name{mmf}
\alias{mmf}
\title{Morgan-Mercer-Flodin growth model}
\usage{
  mmf(t, alpha, beta, gamma, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{the size at t = 0}

  \item{gamma}{a parameter that controls the point of
  inflection.}

  \item{m}{growth rate}
}
\description{
  Computes the Morgan-Mercer-Flodin growth model \deqn{
  y(t) = \frac{(\beta \gamma + \alpha t^m)}{\gamma} +t^m}{
  y(t) = (\beta \gamma + \alpha t^m) / (\gamma + t^m)}
}
\examples{
growth <- mmf(0:10, 10, 0.5, 4, 1)
}
\references{
  A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear
  growth models for modeling oil palm yield growth,"
  Journal of Mathematics and Statistics, vol. 1, no. 3, p.
  225, 2005.
}

