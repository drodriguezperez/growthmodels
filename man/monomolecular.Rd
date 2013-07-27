\name{monomolecular}
\alias{monomolecular}
\title{Monomolecular growth model}
\usage{
  monomolecular(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the monomolecular growth model \deqn{ y(t) =
  \alpha ( 1 - \beta exp(-kt))}
}
\examples{
growth <- monomolecular(0:10, 10, 0.5, 0.3)
}
\references{
  [1] George A. F. Seber and C. J. Wild, "Nonlinear
  Regression", John Wiley & Sons, 2003
}

