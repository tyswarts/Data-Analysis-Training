#this function take the matrix created in makeCacheMatrix an
#then solves its inverse, If the inverse is already in the Cache
#it will pull that value to avoid the extra calculation


cacheSolve <- function(matr,inv) {
        
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        inv<-solve(matr)
        return(inv)
}