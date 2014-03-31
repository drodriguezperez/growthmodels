\name{gompertz}
\alias{gompertz}
\alias{gompertz.inverse}
\title{Gompertz growth model}
\usage{
gompertz(t, alpha, beta, k)

gompertz.inverse(x, alpha, beta, k)
}
\arguments{
  \item{t}{time}

  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{beta}{growth displacement}

  \item{k}{growth rate}
}
\description{
Computes the Gompertz growth model and its inverse \deqn{
y(t) = \alpha exp(-\beta exp(-k^t))}{ y(t) = \alpha *
exp(-\beta * exp(-k^t))}
}
\examples{
growth <- gompertz(0:10, 10, 0.5, 0.3)
# Calculate inverse function
time <- gompertz.inverse(growth, 10, 0.5, 0.3)
}
\author{
Daniel Rodriguez Perez
}
\references{
D. Fekedulegn, M. Mac Siurtain, and J. Colbert, "Parameter
estimation of nonlinear growth models in forestry," Silva
Fennica, vol. 33, no. 4, pp. 327-336, 1999.
}

