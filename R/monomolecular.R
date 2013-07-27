##
##  Monomolecular exponential growth model
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

#' Monomolecular growth model
#'
#' Computes the monomolecular growth model
#' \deqn{ y(t) = \alpha ( 1 - \beta exp(-kt))}
#' 
#' @param t time
#' @param alpha upper asymptote
#' @param beta growth range 
#' @param k growth rate 
#' 
#' @usage monomolecular(t, alpha, beta, k)
#' 
#' @references
#' [1] George A. F. Seber and C. J. Wild, "Nonlinear Regression",
#' John Wiley & Sons, 2003
#' 
#' @examples
#' growth <- monomolecular(0:10, 10, 0.5, 0.3)
#' 
#' @rdname monomolecular
#' @export monomolecular
#' @aliases monomolecular
monomolecular <- function(t, alpha, beta, k) {
  result <- alpha * (1.0 - beta * exp(-k * t))
  return(result)
}
