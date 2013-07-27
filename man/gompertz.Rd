\name{gompertz}
\alias{gompertz}
\title{Gompertz growth model}
\usage{
  gompertz(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth displacement}

  \item{k}{growth rate}
}
\description{
  Computes the Gompertz growth model \deqn{ y(t) = \alpha -
  exp(-\beta exp(-k^t))}
}
\examples{
growth <- gompertz(0:10, 10, 0.5, 0.3)
}

