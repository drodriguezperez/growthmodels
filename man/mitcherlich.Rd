\name{mitcherlich}
\alias{mitcherlich}
\title{Mitcherlich growth model}
\usage{
  mitcherlich(t, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{beta}{growth range}

  \item{k}{growth rate}
}
\description{
  Computes the Mitcherlich growth model \deqn{ y(t) =
  (\alpha - \beta k^t)}{ y(t) = \alpha - \beta * k^t}
}
\examples{
growth <- mitcherlich(0:10, 10, 0.5, 0.3)
}
\references{
  D. Fekedulegn, M. Mac Siurtain, and J. Colbert,
  "Parameter estimation of nonlinear growth models in
  forestry," Silva Fennica, vol. 33, no. 4, pp. 327-336,
  1999.
}

