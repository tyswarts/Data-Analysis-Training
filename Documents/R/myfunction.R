pollutantmean<-function(Directory,pollutant,id=1:332){
        Directory <-"C:/Users/tswarts/Documents/R/specdata"
        Tmean <-numeric()  
        Tmean1 <-numeric()
        Tmean2 <- numeric()
        temp = list.files(pattern="*.csv")
        list2env(lapply(setNames(temp, make.names(gsub("*.csv$", "", temp))), 
                        read.csv), envir = .GlobalEnv)
        
        for (i in id) {
                dataset<- read.csv(temp[i],header=TRUE)
                Tmean1<-dataset[[pollutant]]    
                Tmean2<-c(Tmean2,Tmean1)
        }

        Tmean<-mean(Tmean2,na.rm = TRUE)
        output<-data.frame(pollutant,Tmean)
        output
}