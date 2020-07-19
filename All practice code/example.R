list=ls()
print(list)

getwd()
rm(list)

class(myvar1)
mode(myvar1)

myvar1 <- 'hello world'
mode(myvar1)

sqrt(9)
sqrt(as.complex(-9))

d <- charToRaw('Hello')
d
date()

a <- 4
b <- 2
a+b
a-b
a*b
a/b
result <- a^b
class(result)
p <- as.integer(a)
q <- as.integer(b)
class(p)
class(q)

r <- as.character(a)
s <- as.character(b)
class(r)
class(s)
cvar1 <- 1+2i
cvar2 <- 1-2i
cvar <- cvar1+cvar2
class(cvar)
class(cvar1 * cvar2)
class(cvar1^2)

Sys.Date()
Sys.time()
sys.status()
Sys.timezone()
Sys.info()

somedate <- as.Date('2014-04-09')
somedate
format(somedate,format= '%B %d %Y')
format(somedate,format= ' %D %d %Y')

#install.packages(lubridate)
#library(lubridate)
#wday(somedate, label=TRUE)

list=ls()
list
#rm(list=ls())

#working with missing values

xp = NULL
#is.na()
xp
xz = NA
xz
is.na(xz)
print(as.character(xp==xz))


x1 <- 5
y1 <- NA

if(is.na(y1)==x1){
  print("Equal")
}else{
  print("Not Equal")
}

a <- NA
b <- NA
if (is.na(a)==is.na(b))
{
  print("Equal")
}else{
  print("Not equal")
}
class(mtcars)
#mtcars.head()
head(mtcars['mpg'])
tail(mtcars)
