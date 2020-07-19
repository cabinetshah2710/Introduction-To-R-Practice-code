mtcars
cut(mtcars$qsec,)

cut(mtcars$qsec, breaks = 5)

# here we use ....sequence function to make easy for data presentation

cut(mtcars$qsec, breaks = seq(14,25,by = 2))

# with() function to reduce LOC

print(mtcars$cyl < 6)
print(mtcars$qsec)
print(mtcars$hp)

            #instead of all these lines we can perform it with ....with() function

with(mtcars,{print(cyl < 6);print(mpg); print(hp)})

with(mtcars,{print(cyl < 6);print(mpg > 5); print(hp)})

# using    attach() function so that we can access data table just with col names

attach(mtcars)
print(cyl)            # here we are using just column name to access data table 
print(hp)
print(qsec)

detach(mtcars)


iris
library(data.table)
df_demo_iris <- data.table(iris)[Sepal.Length > 5.0 & Sepal.Width > 3.4 ,
                                 .(AVGpetalLength = mean(Petal.Length),AVGPetalWidth = mean(Petal.Width),Sepal.Length,Sepal.Width),
                                 by = 'Species'
                                 
                                 ]

df_demo_iris

df_demo_iris1 <- data.table(iris)[ , 
                                   .(AVGPL = mean(Petal.Length),AVGPW = mean(Petal.Width)),
                                   by = 'Species'
                                   ]
df_demo_iris1
summary(df_demo_iris1)

#adding new columns to df_demo_iris
df_demo_iris
iris

x_iris <- data.table(iris)
x_iris

x_iris$Average_petal_length <- 0

x_iris$Average_petal_width <- 0

# here updating the column 'Average_petal_length' which has 'setosa' as species


x_iris[x_iris$Species == 'setosa']$Average_petal_length <- 
  df_demo_iris1[df_demo_iris1$Species == 'setosa']$AVGPL
x_iris

# here updating the column 'Average_petal_length' which has 'versicolor' as species


x_iris[x_iris$Species == 'versicolor']$Average_petal_length <- 
  df_demo_iris1[df_demo_iris1$Species == 'versicolor']$AVGPL
x_iris

# here updating the column 'Average_petal_length' which has 'versicolor' as species


x_iris[x_iris$Species == 'virginica']$Average_petal_length <- 
  df_demo_iris1[df_demo_iris1$Species == 'virginica']$AVGPL
x_iris

# here updating the column 'Average_petal_width' which has 'setosa' as species


x_iris[x_iris$Species == 'setosa']$Average_petal_width <- 
  df_demo_iris1[df_demo_iris1$Species == 'setosa']$AVGPW
x_iris

# here updating the column 'Average_petal_width' which has 'versicolor' as species


x_iris[x_iris$Species == 'versicolor']$Average_petal_width <- 
  df_demo_iris1[df_demo_iris1$Species == 'versicolor']$AVGPW
x_iris

# here updating the column 'Average_petal_width' which has 'virginica' as species


x_iris[x_iris$Species == 'virginica']$Average_petal_width <- 
  df_demo_iris1[df_demo_iris1$Species == 'virginica']$AVGPW
x_iris

View(x_iris)
df_demo_iris1

#               Easy way to do above task by performing inner join 

x_iris1 <- data.table(iris)
x_iris1

x_iris1$Average_petal_length <- NULL

x_iris1$Average_petal_width <- NULL

x_iris1

# inner join
x_iris1<-merge(x_iris1,df_demo_iris1, by = 'Species')
x_iris1

www<-table(x_iris1)
www





