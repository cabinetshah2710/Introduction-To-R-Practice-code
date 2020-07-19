#creating lists using       list() function 

myList <- list(c('a','b','c','d'),2,5,TRUE,FALSE)
myList[1][1]
myList[[1]][1]
myList[1][[1]]
myList[[1]]

class(myList)
#Named list slice

myList1 <- list(char_vec=c('a','b','c','d'),
               a_number = 2,
               a_bool = TRUE,
               a_bool1 = FALSE)

#Named references

myList1 $char_vec       #here we can use of the columns that has been assaigned
myList1 $a_bool

#Exersice 
vectors <- list(PoliFigs = c("Washington","Lincoln","Jefferson","Roosevelt"),
                elected = c(1789,1860,1801,1901),
                Party = c("None","Republican","Democrat","Republican"))

vectors $PoliFigs
vectors $Party
#print(vectors $PoliFigs)
# paste () function is generally used to concatenate string values 
new_myList <- paste(vectors$PoliFigs, '-' , vectors$Party)
new_myList
new_myList1 <- paste(vectors$PoliFigs, '-' ,vectors$elected, '-' , vectors$Party)
new_myList1

mean_value <- mean(vectors$elected)
mean_value



#               Factor problems starts from here 


factor_list <- list(as.factor(c("Red","Green","Yellow","Blue")),c(1,2,3,4))
factor_list



