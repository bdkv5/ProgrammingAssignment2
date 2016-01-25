##  Our objective is to compute inverse of a matrix
## We are going by the method of cache process
## basically in this process, we try  to get the same result without computing it, if it is already done.
## if we get new data , than we go by normal computation, by doing so we save time, it is very helpul if our data sets are too big.



## basically this function is to set our data
## functions used are set,get,setinverse,getinverse
## Null is a indication if the incoming data set is new , not computer before
makeCacheMatrix <- function(x = matrix()) {


    m <- NULL
    


    set <- function(y)
    {
        x <<- y
    }
    
    get <- function()
    {
    x
    }
    
    setinverse <- function(inv)
    {
    m <<- inv
    }
    
    getinverse <- function()
    {
    m
    }
    
    list(set = set, get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}

## this function is to compute inverse of a matrix and return this value

cacheSolve <- function(x, ...)
{
    
    ## we are getting the data in below line
     m <- x$getiinverse()
    ## we are checking for null condition ,if it is false we are loading the data which is already computed.
    if(!is.null(m))
    {
        message("getting cached data")
        return(m)
    }
    ## if above case fails we are going to next step to compute inverse , from taking the data
    data <- x$get()
    m <- solve(data)
    ## we are returning the inverse matrix below .
    x$setinverse(m)
    m
}








