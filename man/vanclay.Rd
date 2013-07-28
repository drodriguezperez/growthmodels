\name{vanclay}
\alias{vanclay}
\title{Vanclay growth model}
\usage{
  vanclay(t, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
  Computes the Vanclay growth model \deqn{ y(t) =
  (\alpha^(1-m) - \beta * exp(-k t))^(1/(1-m)) }
}
\examples{
growth <- vanclay(0:10, 10, 0.5, 0.3, 0.5)
}

