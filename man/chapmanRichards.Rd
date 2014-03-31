\name{chapmanRichards}
\alias{chapmanRichards}
\alias{chapmanRichards.inverse}
\title{Chapman-Richards growth model}
\usage{
chapmanRichards(t, alpha, beta, k, m)

chapmanRichards.inverse(x, alpha, beta, k, m)
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
Computes the Chapman-Richards growth model and its inverse
\deqn{ y(t) = \alpha (1 - \beta exp(-k t)^{1/(1-m)}) }{
y(t) = \alpha * (1 - \beta * exp(-k * t)^{1/(1-m)}) }
}
\examples{
growth <- chapmanRichards(0:10, 10, 0.5, 0.3, 0.5)
# Calculate inverse function
time <- chapmanRichards.inverse(growth, 10, 0.5, 0.3, 0.5)
}
\author{
Daniel Rodriguez Perez
}
\references{
D. Fekedulegn, M. Mac Siurtain, and J. Colbert, "Parameter
estimation of nonlinear growth models in forestry," Silva
Fennica, vol. 33, no. 4, pp. 327-336, 1999.
}

