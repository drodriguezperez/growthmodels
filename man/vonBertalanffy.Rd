\name{vonBertalanffy}
\alias{vonBertalanffy}
\title{VonBertalanffy growth model}
\usage{
  vonBertalanffy(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the VonBertalanffy growth model \deqn{ y(t) =
  \frac{\alpha}{(1 + \beta exp(-k * t))^(-3)} }
}
\examples{
growth <- vonBertalanffy(0:10, 10, 0.5, 0.3)
}

