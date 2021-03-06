#################################
## Assignmet Week 3            ##
## Coursera                    ##
## R programming               ##
## Johns Hopkins               ##
## Data Science Specialization ##
## Date: 2-Sep-2017            ##
##                             ##
## Rhia Kaur Sahni             ##
## ##############################

#####This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  r <- NULL
  set <- function(y) {
    x <<- y
    r <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) r <<- inverse
  getinverse <- function() r
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


####This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 


cacheSolve <- function(x) {
  r <- x$getinverse()
  if (!is.null(r)) {
    message(" cached data")
    return(r)
  }
  data <- x$get()
  r <- solve(data)
  x$setinverse(r)
  r
}
    
    