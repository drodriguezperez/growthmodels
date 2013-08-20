##
##  Logistic exponential growth model
##
##  Created by Daniel Rodríguez Pérez on 27/7/2013.
##
##  Copyright (c) 2013 Daniel Rodríguez Pérez.
##
##  This program is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program.  If not, see <http://www.gnu.org/licenses/>
##

#' Logistic growth model
#'
#' Computes the Logistic growth model
#' \deqn{ y(t) = \frac{\alpha}{1 + \beta exp(-k t)}}
#' 
#' @param t time
#' @param alpha upper asymptote
#' @param beta growth range 
#' @param k growth rate 
#' 
#' @usage logistic(t, alpha, beta, k)
#' 
#' @examples
#' growth <- logistic(0:10, 10, 0.5, 0.3)
#' 
#' @references
#' D. Fekedulegn, M. Mac Siurtain, and J. Colbert, "Parameter estimation of
#' nonlinear growth models in forestry," Silva Fennica, vol. 33, no. 4, pp.
#' 327-336, 1999.
#' 
#' @rdname logistic
#' @export logistic
#' @aliases logistic
logistic <- function(t, alpha, beta, k) {
  result <- alpha / (1 + beta * exp(-k * t))
  return(result)
}

#' Generalised Logistic growth model
#' 
#' Computes the Generalised Logistic growth model
#' \deqn{ y(t) = A + \frac{U - A}{1 + \beta exp(-k (t- t_0))}}
#' 
#' @param t time
#' @param A the lower asymptote
#' @param U the upper asymptote
#' @param k growth range
#' @param beta growth range
#' @param t0 time shift
#' 
#' @usage generalisedLogistic(t, A, U, k, beta, t0)
#' 
#' @references
#' D. Fekedulegn, M. Mac Siurtain, and J. Colbert, "Parameter estimation of
#' nonlinear growth models in forestry," Silva Fennica, vol. 33, no. 4, pp.
#' 327-336, 1999.
#' 
#' @examples
#' growth <- generalisedLogistic(0:10, 5, 10, 0.3, 0.5, 3)
#' 
#' @rdname generalisedLogistic
#' @export generalisedLogistic
#' @aliases generalisedLogistic
generalisedLogistic <- function(t, A, U, k, beta, t0) {
  result <- A + logistic(t - t0, U - A, beta, k);
}
