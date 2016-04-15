complete<-function(directory, id=1:332) {
        Directory <-"C:/Users/tswarts/Documents/R/specdata"
        temp = list.files(pattern="*.csv")
        list2env(lapply(setNames(temp, make.names(gsub("*.csv$", "", temp))), 
                        read.csv), envir = .GlobalEnv)
        Tmean3<-numeric()
        for (i in id) {
                dataset<- read.csv(temp[i],header=TRUE)
                Tmean1<-data.frame(sum(length(dataset)),1)
                Tmean1<-dataset[,2]    
                Tmean2<-data.frame(sum(length(na.omit(Tmean1))),1)
                Tmean3<-c(Tmean3,Tmean2[1,1])
                
        }
        
        output=cbind(id,Tmean3)
        output
        
}