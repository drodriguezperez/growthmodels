\name{blumberg}
\alias{blumberg}
\title{Blumberg growth model}
\usage{
  blumberg(t, alpha, w0, m, t0 = 0)
}
\arguments{
  \item{t}{time}

  \item{alpha}{upper asymptote}

  \item{w0}{a reference value at t = t0}

  \item{m}{slope of growth}

  \item{t0}{time shift (default 0)}
}
\description{
  Computes the Blumberg growth model \deqn{ y(t) =
  \frac{\alpha * (t + t_0)^m}{w_0 + (t + t_0)^m}}{y(t) =
  (\alpha * (t - t_0)^m)/(w_0 + (t - t_0)^m)}
}
\examples{
growth <- blumberg(0:10, 10, 2, 0.5)
}
\references{
  A. Tsoularis and J. Wallace, "Analysis of logistic growth
  models.," Math Biosci, vol. 179, no. 1, pp. 21-55, Jul.
  2002.
}

