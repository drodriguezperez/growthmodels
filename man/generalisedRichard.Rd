\name{generalisedRichard}
\alias{generalisedRichard}
\title{Generalised Richard growth model}
\usage{
  generalisedRichard(t, A, U, k, m, beta, t0)
}
\arguments{
  \item{t}{time}

  \item{A}{the lower asymptote}

  \item{U}{the upper asymptote}

  \item{k}{growth range}

  \item{m}{slope of growth}

  \item{beta}{growth range}

  \item{t0}{time shift (default 0)}
}
\description{
  Computes the Generalised Richard growth model \deqn{ y(t)
  = A + \frac{U - A}{(1 + \beta exp(-k (t - t_0)))^{(1/m)}
  }}{ y(t) = A + (U - A)/(1 + \beta * exp(-k * (t -
  t_0)))^{(1/m)} }
}
\examples{
growth <- generalisedRichard(0:10, 5, 10, 0.3, 0.5, 1, 3)
}
\references{
  http://en.wikipedia.org/wiki/Generalised_logistic_function
}

