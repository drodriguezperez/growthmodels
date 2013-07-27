##
##  Mitcherlich exponential growth model
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

#' Mitcherlich growth model
#'
#' Computes the Mitcherlich growth model
#' \deqn{ y(t) = (\alpha - \beta k^t)}
#' 
#' @param t time
#' @param alpha upper asymptote
#' @param beta growth range 
#' @param k growth rate 
#' 
#' @usage mitcherlich(t, alpha, beta, k)
#' 
#' @references
#' [1] B.F. Phillips and N.A. Campbell, "A new method of fitting the von
#' Bertalanffy growth curve using data on the whelk Dicathais," Growth,
#' vol 32, 1968 
#' 
#' @examples
#' growth <- mitcherlich(0:10, 10, 0.5, 0.3)
#' 
#' @rdname mitcherlich
#' @export mitcherlich
#' @aliases mitcherlich
mitcherlich <- function(t, alpha, beta, k) {
  result <- alpha - beta * k^t
  return(result)
}
