\name{monomolecular}
\alias{monomolecular}
\alias{monomolecular.inverse}
\title{Monomolecular growth model}
\usage{
  monomolecular(t, alpha, beta, k)

  monomolecular.inverse(x, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the monomolecular growth model \deqn{ y(t) =
  \alpha ( 1 - \beta exp(-k t))}{ y(t) = \alpha * ( 1 -
  \beta * exp(-k * t))}
}
\examples{
growth <- monomolecular(0:10, 10, 0.5, 0.3)
# Calculate inverse function
time <- monomolecular.inverse(growth, 10, 0.5, 0.3)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

