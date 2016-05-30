> ## Put comments here that give an overall description of what your
> ## functions do
> 
> ## Write a short comment describing this function
> 
> makeCacheMatrix <- function(x = matrix()) {
+  inv <- null
+  set <- function(y) {
+    x <<- y
+    inv <<- NULL
+  }
+  get <- function() x
+  setinverse <- function(inverse) inv<<- inverse
+  getinverse <- function() inv
+  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
+ }
> 
> 
> ## Write a short comment describing this function
> 
>   cacheSolve <- function(x=matrix()) {
+     inv <- x$getinverse()
+     if(!is.null(inv)) {
+       message("getting cached data.")
+       return(inv)
+     }
+     data <- x$get()
+     inv <- solve(data)
+     x$setinverse(inv)
+     inv
+   }
> 
> x = rbind(c(1, -3), c(-3, 1))
> m = makeCacheMatrix(x)
Error in makeCacheMatrix(x) : object 'null' not found
> ## Put comments here that give an overall description of what your
> ## functions do
> 
> ## Write a short comment describing this function
> 
> makeCacheMatrix <- function(x = matrix()) {
+  inv <- NULL
+  set <- function(y) {
+    x <<- y
+    inv <<- NULL
+  }
+  get <- function() x
+  setinverse <- function(inverse) inv<<- inverse
+  getinverse <- function() inv
+  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
+ }
> 
> 
> ## Write a short comment describing this function
> 
>   cacheSolve <- function(x=matrix()) {
+     inv <- x$getinverse()
+     if(!is.null(inv)) {
+       message("getting cached data.")
+       return(inv)
+     }
+     data <- x$get()
+     inv <- solve(data)
+     x$setinverse(inv)
+     inv
+   }
> 
> x = rbind(c(1, -3), c(-3, 1))
> m = makeCacheMatrix(x)
> m$get()
     [,1] [,2]
[1,]    1   -3
[2,]   -3    1
> 
> cacheSolve(m)
       [,1]   [,2]
[1,] -0.125 -0.375
[2,] -0.375 -0.125
> 
> cacheSolve(m)
getting cached data.
       [,1]   [,2]
[1,] -0.125 -0.375
[2,] -0.375 -0.125
> 