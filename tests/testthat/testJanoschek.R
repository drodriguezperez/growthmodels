##
##  Tests for the Janoschek growth model
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

context("Janoschek growth model")

MAXERROR <- 1e-6

test_that("Janoschek model values", {
  expected   <- c(2.000000, 3.769594, 7.056964, 9.156806,  9.853475,
                  9.984556, 9.999013, 9.999962, 9.999999, 10.000000)
  parameters <- c(10, 2, 0.25, 2)
  time       <- 0:9
  
  expect_that(janoschek(time, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(expected, tolerance = MAXERROR))
})

test_that("Janoschek growth model values", {
  parameters <- c(10, 2, 0.5, 2)
  time       <- c(0.0, 0.5, 1.0, 1.5, 2.0, 3.0, 4.0, 5.0)
  size       <- janoschek(time, parameters[1], parameters[2], parameters[3], parameters[4])
  
  expect_that(janoschek.inverse(size, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(time, tolerance = MAXERROR))
})
