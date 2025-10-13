# Load existing dataset
data("mtcars")

# Show first few rows
head(mtcars)
# Describing its structure
str(mtcars)

# Applying generic functions
print(mtcars)
summary(mtcars)

# Create S3 example
car_s3 <- list(model = "Mazda RX4", mpg = mtcars["Mazda RX4", "mpg"], cyl = mtcars["Mazda RX4", "cyl"])
class(car_s3) <- "car_s3"

print.car_s3 <- function(x) {
  cat("🚗 S3 Car Object\n")
  cat("Model:", x$model, "\n")
  cat("MPG:", x$mpg, "\n")
  cat("Cylinders:", x$cyl, "\n")
}

print(car_s3)
# Create S4 class
setClass("car_s4",
         slots = c(model = "character", mpg = "numeric", cyl = "numeric"))

car_s4 <- new("car_s4", model = "Mazda RX4", mpg = mtcars["Mazda RX4", "mpg"], cyl = mtcars["Mazda RX4", "cyl"])

setMethod("show", "car_s4", function(object) {
  cat("🚗 S4 Car Object\n")
  cat("Model:", object@model, "\n")
  cat("MPG:", object@mpg, "\n")
  cat("Cylinders:", object@cyl, "\n")
})

car_s4

