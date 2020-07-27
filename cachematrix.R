## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  #sets the variable (inv) for inverse value as NULL
  
  set_matrix <- function(def_value) {
    #creates a function that sets default values for x and inv
    
    x <<- def_value
    
    inv <<- NULL
    
  }
  
  get_matrix <- function() x
  #creates a function that returns x value
  
  set_inverse <- function(inverse) inv <<- inverse
  #creates a function that assigns the inverse value to inv
  
  get_inverse <- function() inv
  #creates a function that returns inv
  
  list(set_matrix = set_matrix, get_matrix = get_matrix, 
       set_inverse = set_inverse, get_inverse = get_inverse)
  #creates a list that contains and tags all the functions creaated above
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  inv <- x$get_inverse
  #gets the inverse value
  
  if(!is.null(inv)) {
    #if the inverse value is not set as NUll
    
    message("getting cached data")
    
    return(inv)
    #returns the inverse value from cached data
    
  }
  
  mtrx <- x$get_matrix
  #assigns the set matrix to the variable mtrx
  
  inv <- solve(mtrx, ...)
  #assigns the inverse of the set matrix using solve function and 
  #mtrx variable
  
  x$set_inverse(inv)
  #sets the inverse value from previous argument to cache
  
  inv
  #returns inv
  
}
