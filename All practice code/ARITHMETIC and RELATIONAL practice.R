x<- c(2,4,6)
y<- c(8,8,8)
x%%y
x%/%y

y%%x
y%/%x

v<- c(2,5.5,6)
t<- c(8,3,4)
v%%t
#?%%

#relational problems 

x<- 0.2 + 0.3
if(x == 0.5) print("Equal") else print("Not Equal")

#in this code it will say     Not Equal  ---bcoz rounding error generates

x<- 0.1 + 0.2
if(x == 0.3) print("Equal") else print("Not Equal")

#To resolve this issue in floating point number we use identical() & all.equal() functions 

if(identical(x,0.3)) print("Equal") else print("Not Equal")   #--Here also we encounter error due to rounding


if(all.equal(x,0.3)) print("Equal") else print("Not Equal")    #This doesn't generate any rounding error





