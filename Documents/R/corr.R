corr <- function(directory, threshold =0) {
        allFiles <- list.files(directory, full.names=TRUE)
        #just define a dataFrame to get data into it
        corrDF <- data.frame()
        TcorrDF<-data.frame()
        for(i in allFiles) {
                fileData <- data.frame(read.csv(i))
                completeCases = sum(complete.cases(fileData))
                if(completeCases > threshold) {
                        corrDF <- na.omit(fileData)
                        TcorrDF<-rbind(TcorrDF,cor(corrDF$sulfate, corrDF$nitrate , use="pairwise.complete.obs"))
                }
        }
        print(head(TcorrDF))

}
cr <- corr(directory, 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)