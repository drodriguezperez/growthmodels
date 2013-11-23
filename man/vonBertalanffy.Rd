\name{vonBertalanffy}
\alias{vonBertalanffy}
\alias{vonBertalanffy.inverse}
\title{von Bertalanffy growth model}
\usage{
  vonBertalanffy(t, alpha, beta, k, m)

  vonBertalanffy.inverse(x, alpha, beta, k, m)
}
\arguments{
  \item{t}{time}

  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}

  \item{m}{slope of growth}
}
\description{
  Computes the von Bertalanffy growth model \deqn{ y(t) =
  (\alpha^(1-m) - \beta * exp(-k t))^(1/(1-m)) }{ y(t) =
  (\alpha^(1-m) - \beta * exp(-k * t))^(1/(1-m)) }
}
\examples{
growth <- vonBertalanffy(0:10, 10, 0.5, 0.3, 0.5)
# Calculate inverse function
time <- vonBertalanffy.inverse(growth, 10, 0.5, 0.3, 0.5)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

