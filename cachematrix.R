## Our goal is to write a couple of functions i.e. "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix.

## makeCacheMatrics creates a special “matrix” object which can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL
 }
 get <- function() x
 setinv <- function(inverse) inv <<- inverse
 getinv <- function() inv
 list(set = set, get = get, setinv = setinv, getinv = getinv)
 }



## computes the inverse of the “matrix” returned by makeCacheMatrix()

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
  message("getting cached result")
  return(inv)
}
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}	

