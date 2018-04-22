##
##  Rosso growth model
##
##  Created by Daniel Rodríguez Pérez on 22/4/2018.
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

#' Rosso growth model
#'
#' Computes the Rosso growth model and its inverse
#' \deqn{ y(t) = U - \log(1 + (\exp(U - A) - 1)*\exp(-mu*(t-lag))) }
#' 
#' @param t time
#' @param x size
#' @param mu maximal growth rate
#' @param lag time lag
#' @param A the lower asymptote 
#' @param U the upper asymptote 
#' @examples
#' growth <- rosso(0:10, 0.05, 2, 1, 10)
#' 
#' @references
#' T. Ross, "Indices for performance evaluation of predictive models in food
#' microbiology." J. Appl. Bacteriol. vol. 81, no. 5, pp. 501-508. Nov. 1996.
#' 
#' @author Daniel Rodriguez
#' 
#' @rdname rosso
#' @export rosso
#' @aliases rosso
rosso <- function(t, mu, lag, A, U) {
  result <- t
  result[t <= lag] <- A
  result[t > lag] <- U - log(1 + (exp(U - A) - 1)*exp(-mu*(t[t>lag]-lag))) 
  
  return(result)
}

#' @examples
#' time <- rosso.inverse(growth, 0.05, 2, 1, 10)
#' 
#' @rdname rosso
#' @export rosso.inverse
#' @aliases rosso.inverse
rosso.inverse <- function(x, mu, lag, A, U) {
  result <- lag - log((exp(U - x) - 1)/(exp(U - A) - 1))/mu
  return(result)
}
