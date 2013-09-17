\name{inverse.blumberg}
\alias{inverse.blumberg}
\title{Inverse function of Blumberg growth model}
\usage{
  inverse.blumberg(x, alpha, w0, m, t0 = 0)
}
\arguments{
  \item{x}{size}

  \item{alpha}{upper asymptote}

  \item{w0}{a reference value at t = t0}

  \item{m}{slope of growth}

  \item{t0}{time shift (default 0)}
}
\description{
  Computes the time for a size in the Blumberg growth model
  for the indicated sizes value
}
\examples{
times <- inverse.blumberg(0:10, 12, 2, 0.5)
}

