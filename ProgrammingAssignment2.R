### Cache a matrix and find the inverse if there is one

#Create a matrix and cahce is outside of the function environment
makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setinverse <- function(solve) m <<- solve
     getinverse <- function() m
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## Calculate the inverse of the matrix and print output

CachedMarix <- makeCacheMatrix(a)
cacheSolve(CachedMarix)

set <- function(y) {
     x <<- y
     m <<- NULL
}
