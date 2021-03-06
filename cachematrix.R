## have written two functions, makeCacheMatrix and cacheSolve that cache the inverse of a matrix

## function 'makeCacheMatrix' creates a special matrix object that can cache its
## inverse for the input

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
        set<-function(y){
                x<<-y
                inv<<-NULL
        }
        get<-function()x
        setinv<-function(inverse) inv<<-inverse
        getinv<-function() inv
        list(set=set,get=get,setinv=setinv,getinv=getinv)

}


##function 'cacheSolve' computes the inverse of the special matrix returned by the makeCacheMatrix
 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
        if(!is.null(inv)){
                message("getting cache result")
                return(inv)
        }
        data<-x$get()
        inv<-solve(data, ...)
        x$setinv(inv)
        inv
}
