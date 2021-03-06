## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Created functions to set and get the answer

makeCacheMatrix <- function(x = matrix()) 
        {
m<-NULL
set<-function(y)
{
        x<<-y
        m<<-NULL
}
get <-function()x
setsolve<-function(solve) m<<-solve
getsolve<-function()m
list(set=set,get=get,
     setsolve=setsolve,
     getsolve=getsolve)
}


## Write a short comment describing this function
##Sets the inverse of the matrix if it hasn't been setup else picks the already inverted matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getsolve()
        if(!is.null(m))
        {
                message("getting cached data")
                return(m)
        }
        data <-x$get()
        m<-solve(data,...)
        x$setsolve(m)
        m
}
