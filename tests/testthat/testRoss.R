##
##  Tests for the Rosso growth model
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

context("Rosso growth model")

MAXERROR <- 1e-6

test_that("Rosso growth model values", {
  expected   <- c(1, 1, 1, 1.049994, 1.099987, 1.149980, 1.199973, 1.249965,
                  1.299957, 1.349948, 1.399939)
  parameters <- c(0.05, 2, 1, 10)
  time       <- 0:10
  
  expect_that(rosso(time, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(expected, tolerance = MAXERROR))
  
  expected   <- c(1, 1, 1.15, 1.30, 1.45, 1.60, 1.75, 1.90, 2.05, 2.20, 2.35)
  parameters <- c(0.15, 1, 1, 100)
  
  expect_that(rosso(time, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(expected, tolerance = MAXERROR))
})

test_that("Inverse Rosso growth model values", {
  parameters <- c(0.05, 0, 1, 10)
  time       <- 0:10
  size       <- rosso(time, parameters[1], parameters[2], parameters[3], parameters[4])
  
  expect_that(rosso.inverse(size, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(time, tolerance = MAXERROR))
  
  parameters <- c(0.15, 0, 1, 100)
  size       <- rosso(time, parameters[1], parameters[2], parameters[3], parameters[4])
  
  expect_that(rosso.inverse(size, parameters[1], parameters[2], parameters[3], parameters[4]),
              equals(time, tolerance = MAXERROR))
})
