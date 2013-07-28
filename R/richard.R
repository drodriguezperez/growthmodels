##
##  Richard growth mode
##
##  Created by Daniel Rodríguez Pérez on 28/7/2013.
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

#' Richard growth model
#'
#' Computes the Richard growth model
#' \deqn{ y(t) = \frac{\alpha}{(1 + \beta exp(-k * t))^(1/m)} }
#' 
#' @param t time
#' @param alpha upper asymptote
#' @param beta growth range 
#' @param k growth rate
#' @param m slope of growth 
#' 
#' @usage richard(t, alpha, beta, k, m)
#' 
#' @examples
#' growth <- richard(0:10, 10, 0.5, 0.3, 0.5)
#' 
#' @rdname richard
#' @export richard
#' @aliases richard
richard <- function(t, alpha, beta, k, m) {
  result <- (1 + beta * exp(-k * t))^(1 / m)
  result <- alpha / result;
  return(result)
}
