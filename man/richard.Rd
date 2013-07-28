\name{richard}
\alias{richard}
\title{Richard growth model}
\usage{
  richard(t, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
  Computes the Richard growth model \deqn{ y(t) =
  \frac{\alpha}{(1 + \beta exp(-k * t))^(1/m)} }
}
\examples{
growth <- richard(0:10, 10, 0.5, 0.3, 0.5)
}

