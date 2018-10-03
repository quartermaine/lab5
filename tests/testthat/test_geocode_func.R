library(lab5)
library(testthat)

context("geocode_func")

# test_that("Overall test",{
#   expect_that(geocode_func$new()$single_adr(""),
#               equals("Please check again your input"))
#   expect_that(geocode_func$new()$single_adr("A@tjdl !!! bbb"),
#               equals("Please check again your input"))
#   expect_that(round(as.numeric(geocode_func$new()$single_adr("Birmingham, Alabama, United States")["lat"]),2),
#               equals(33.46))
#   expect_that(round(as.numeric(geocode_func$new()$single_adr("Birmingham, Alabama, United States")["long"]),2),
#               equals(-86.80))
# })


#context("Address")

#test_that("Overall test", {
  #expect_that(address(latlong = 2),
              #throws_error("input should be character"))
  #expect_that(address(latlong = "39.986913,  116.3058739"),
              #equals(address(latlong = "39.986913  116.3058739")))
  #expect_that(address(latlong = "59.3481484 18.0236579")[1,"Full_address"],
              #equals("Nobels väg 15B, 171 65 Solna, Sweden"))
  #expect_that(is.data.frame(address(latlong = "40.71818  -73.99005")),
              #is_true())
  #expect_that(address(latlong = "2,3"),
              #throws_error("No match found"))
#})
