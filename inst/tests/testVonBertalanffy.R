##
##  Tests for the VonBertalanffy growth model
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

context("VonBertalanffy growth model")

MAXERROR <- 1e-6

test_that("VonBertalanffy growth model values", {
  expected   <- c(1.777217e+009, 1.991384e+007, 2.298576e+005, 3.014107e+003,
                  64, 4.652365e+000, 1.518342e+000, 1.103350e+000, 1.022475e+000)
  parameters <- c(1, 3, 3)
  time       <- c(-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0)
  
  expect_that(vonBertalanffy(time, parameters[1], parameters[2], parameters[3]),
              equals(expected, tolerance = MAXERROR))
  
  expected   <- c(2.544236e+012, 6.326823e+009, 1.605766e+007, 4.713531e+004,
                  324, 2.461955e+001, 1.336762e+001, 1.217936e+001, 1.202417e+001)
  parameters <- c(12, 2, 4)
  time       <- c(-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0)
  
  expect_that(vonBertalanffy(time, parameters[1], parameters[2], parameters[3]),
              equals(expected, tolerance = MAXERROR))
})
