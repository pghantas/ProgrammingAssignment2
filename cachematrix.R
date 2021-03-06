## cacheSolve function takes in a matrix that has an inverse
## and returns the cached inverse if it is avialable
## Otherwise it will sovle and returns the inverse

## Creates the special matrix by Praveen Ghantasala
 
 makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) m <<- inv
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
 
 }
 
 
## Solves the inverse if it does not exist

 cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
 }



