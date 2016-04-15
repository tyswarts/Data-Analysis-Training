#This function creates a special Matrix,
#and then Caches the inverse

makeCacheMatrix<-function (a,b,c,d) {
        #a,b,c,d are the four values that will go into 
        #the matrix
        inv<<-NULL
        #set initial value of inv back to NULL
        matr<<-rbind(c(a,b),c(c,d))
        #Create Matrix
        inv<<-solve(matr)
        #solve inverse
        
}