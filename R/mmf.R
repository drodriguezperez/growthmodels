##
##  Morgan-Mercer-Flodin growth model
##
##  Created by Daniel Rodríguez Pérez on 28/8/2013.
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

#' Morgan-Mercer-Flodin growth model
#'
#' Computes the Morgan-Mercer-Flodin growth model
#' \deqn{ y(t) = \frac{(\beta \gamma + \alpha t^m)}{\gamma} +t^m}{ y(t) = (\beta \gamma + \alpha t^m) / (\gamma  + t^m)}
#' 
#' @param t time
#' @param alpha upper asymptote
#' @param beta the size at t = 0
#' @param gamma a parameter that controls the point of inflection. 
#' @param m growth rate 
#' 
#' @usage mmf(t, alpha, beta, gamma, m)
#' 
#' @examples
#' growth <- mmf(0:10, 10, 0.5, 4, 1)
#' 
#' @references
#' A. Khamiz, Z. Ismail, and A. T. Muhammad, "Nonlinear growth models for
#' modeling oil palm yield growth," Journal of Mathematics and Statistics,
#' vol. 1, no. 3, p. 225, 2005.
#' 
#' @rdname mmf
#' @export mmf
#' @aliases mmf
mmf <- function(t, alpha, beta, gamma, m) {
  result <- (beta * gamma + alpha * t^m) / (gamma + t^m)
  return(result)
}
