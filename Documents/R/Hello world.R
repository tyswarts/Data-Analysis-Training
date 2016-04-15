x<-"hello world"
print(x)
y = "hello world"

x

i

f<-function(x) {x+1}
f(2)

v= c(1,2,3)

s<-1:4

#matrix 
m<- matrix (data=1:6,nrow = 2,ncol = 3)

m
#array
a<-array(data = 1:8, dim=c(2,2,2))
a
#list (different data types)
l<-list(TRUE,1L,2.34,"abc")
l
#creating a set of factors
factors<- factor(c("male","female","male","male"))
levels(factors)
unclass(factors)

#creating a data frame
df <- data.frame(
  name = c("cat","dog","cow","pig"),
  Howmany = c(5,10,15,20),
  ispet = c(TRUE,TRUE,FALSE,FALSE))
df
df[c(2,4), ]
df[c(TRUE, FALSE, TRUE,FALSE),]
df[df$ispet == TRUE, ]
df[df$Howmany>10,]
#####important
df[df$name %in% c("cat","cow"),]
identical(n,m)


