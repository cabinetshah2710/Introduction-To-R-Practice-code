print("PRACTICE OF VECTOR IN R LANGUAGE")
x<- c('a','b','c','d','e','f')
#x[2:4]
#x[-1]
y<-c(1,2,3,4,5,6)
z<-c(x,y)
#Logical vector use to print the vectors values
p<-c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
x[p]

for (i in x) {
  print(i)
}

#numeric index vector 
x[c(1,2,4)]

x[9]
x[-9]   #to be searched how this is happening 
x[-8]   #this too

#Named vector member ----> also it can be used as spreedsheet
names(x)
names(x)<- c('col1','col2','col3','col4','col5','col6')
x
x["col2"]
x[c("col3","col5")]
