A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A_plus_B <- A + B
print("A + B =")
print(A_plus_B)

A_minus_B <- A - B
print("A - B =")
print(A_minus_B)

D <- diag(c(4, 1, 2, 3))
print("Diagonal Matrix D =")
print(D)

custom_matrix <- cbind(
  c(3, 2, 2, 2, 2),
  c(1, 3, 0, 0, 0),
  c(1, 0, 3, 0, 0),
  c(1, 0, 0, 3, 0),
  c(1, 0, 0, 0, 3)
)
print("Custom 5x5 Matrix =")
print(custom_matrix)
