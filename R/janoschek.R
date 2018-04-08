##
##  Janoschek growth model
##
##  Created by Daniel Rodríguez Pérez on 25/3/2018.
##
##  Copyright (c) 2018 Daniel Rodríguez Pérez.
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

#' Janoschek growth model
#'
#' Computes the Janoschek growth model and its inverse
#' \deqn{ y(t) = \alpha *(\alpha - \beta) \exp(-b * t^c)) }
#' 
#' @param t time
#' @param x size
#' @param alpha upper asymptote
#' @param beta lower asymptote
#' @param b growth parameter 
#' @param c shape parameter
#' 
#' @examples
#' growth <- janoschek(0:10, 10, 2, 0.5, 2)
#' 
#' @references
#' Michael J. Panik, "Growth Curve Modeling: Theory and Applications",
#' John Wiley & Sons, December 2013.
#' 
#' @author Daniel Rodriguez
#' 
#' @rdname janoschek
#' @export janoschek
#' @aliases janoschek
janoschek <- function(t, alpha, beta, b, c) {
  result <- alpha - (alpha - beta) * exp(-b * t^c)
  return(result)
}

#' @examples
#' # Calculate inverse function
#' time <- janoschek.inverse(growth, 12, 2, 0.5, 2) 
#' 
#' @rdname janoschek
#' @export janoschek.inverse
#' @aliases janoschek.inverse
janoschek.inverse <- function(x, alpha, beta, b, c) {
  result <- (log((alpha - beta)/(alpha - x)) / b) ** (1 / c)
  return(result)
}
