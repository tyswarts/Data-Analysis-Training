#this function take the matrix created in makeCacheMatrix an
#then solves its inverse, If the inverse is already in the Cache
#it will pull that value to avoid the extra calculation


cachSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}