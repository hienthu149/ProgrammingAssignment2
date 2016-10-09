

## Create makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
                }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m

}


## Create cacheSolve function

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                 message("getting cached data")
                return(m)
     }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
