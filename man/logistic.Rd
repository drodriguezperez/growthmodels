\name{logistic}
\alias{logistic}
\title{Logistic growth model}
\usage{
  logistic(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the Logistic growth model \deqn{ y(t) =
  \frac{\alpha}{1 + \beta exp(-k t)}}
}
\examples{
growth <- logistic(0:10, 10, 0.5, 0.3)
}

