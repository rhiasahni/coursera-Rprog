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
    
    