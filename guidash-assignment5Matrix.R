# 1. Create the matrices
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

# 2. Inspect dimensions
dim_A <- dim(A) # 10 x 10, is a square
dim_B <- dim(B) # 10 x 100, not a square

# 3. Compute inverse and determinant
invA <- solve(A)
detA <- det(A)

invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)

# Prints results
print("Dimensions of A:")
print(dim_A)

print("Dimensions of B:")
print(dim_B)

print("Inverse of A:")
print(invA)

print("Determinant of A:")
print(detA)

print("Inverse of B (should error):")
print(invB)

print("Determinant of B (should error):")
print(detB)

