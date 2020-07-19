
#using data.frame() function to develop table

Names <- c('Mercury','Venus','Earth','Mars')
Moons <- c(FALSE,FALSE,TRUE,TRUE)
Temperature <- c('Hot','Hot','Warm','Cool')

planets <- data.frame(Names,Moons,Temperature)

# working with data framess
planets[1,]

planets [1,2]     # A single  cell
planets[1,]       # A single row
planets[,2]       # A single column
planets[2,]
planets[1,1]

# subsetting data frame

# Specifiying the range 

planets[1:2,]         # 1st two rows
planets[,1:2]         # 1st two columns

planets[1:2 , 1:3 ]   # 1st two rows & 1st three columns

# using custom vectors

select_row <- c(2,4)     # selects 2nd & 4th rows of Data Frames
select_col <- c(1,3)     # selects 1st & 3rd columns of Data Frames
planets[select_row , select_col]

# Negative subsetting Data Frames

unselect_row <- -2        # it will not select 2nd row from Data Frame
unselect_col <- -3        # it will not select 3rd column from Data Frame
planets[unselect_row , unselect_col]

#Logical subsetting 
select_r <- c(T,F,T,T)
select_c <- c(T,F,T)
planets[select_r,select_c]

planets[c(T,T,F,T),c(T,T,F)]        #custom vector 

# To view data Frame as spredsheet 

View(planets)

#         V.V.V important 

# Creating "iris" data frame

data("iris")
iris_df <- as.data.frame(iris)

head(iris_df,3)
tail(iris_df,5)

#summarize data frame 

summary(iris_df)

#unique value in a column of data frame

unique((iris_df$Species))

iris_df$Species == "setosa"
iris_df$Species == "virginica"
iris_df$Species == "versicolor"

# Rows having "setosa" as species in data Frame
iris_df[iris_df$Species == "setosa",]
iris_df[iris_df$Species == "virginica",]
iris_df[iris_df$Species == "versicolor",]

#subsetting columns of Data Frames
iris_df[iris_df$Species == "setosa",c('Sepal.Length','Sepal.Width','Species')]
head(iris_df[iris_df$Species == "setosa",c('Sepal.Length','Sepal.Width','Species')],10)

#       we will work with    Join function in R-Language

# Creating Cars Data Frame
Cars<- c('F-150','Camaro','Lexus','Pathfinder','Focus','BMW')
Types <- c('Truck','Sport','Sedan','mini','Suv','Sedan')
color_id <- c(1,2,1,3,4,5)
df_cars <- data.frame(Cars,Types,color_id)

#Creating Colors Data Frame
color_name <- c('Red','White','Grey','Black','Pink')
color_id <- c(1,2,3,4,6)
df_colors <- data.frame(color_id,color_name)

# inner join we will use merge (1st_data frame , 2nd Datafrmae, by = ' common column_name')

df_result_innerJoin <- merge(df_cars,df_colors, by = 'color_id')
View(df_result_innerJoin)

#outer join

df_result_outerJoin <- merge(df_cars,df_colors, by = 'color_id', all = TRUE)
View(df_result_outerJoin)
df_result_outerJoin

#right join
df_result_rightJoin <- merge(df_cars,df_colors, by = 'color_id', all.y = TRUE)
View(df_result_rightJoin)
df_result_rightJoin

#left join
df_result_leftJoin <- merge(df_cars,df_colors, by = 'color_id', all.x = TRUE)
View(df_result_leftJoin)
df_result_leftJoin
# maximum value of individual columns of Data Frame 

max(iris_df['Sepal.Length'])


# Playing with Data Table
library(data.table)
dt<- data.table(mtcars)[, . (cyl,gear)]
head(dt[,unique(gear),by=cyl])
View(df)

# Working with Data Table
                # using table function to get distribution of cylindars

table(mtcars$cyl)
dt1 <- mtcars
head(dt1)

              #subsetting data table <- just cylindars & gears
dt2 <- data.table(mtcars)[,.(cyl,gear)]
          # we need rows with mpg >20
dt2 <- data.table(mtcars)[mpg > 20, .(cyl,gear)]

        # Adding mpg in dt2 table
dt2 <- data.table(mtcars)[mpg > 20, .(cyl,gear,mpg)]

        # cylindars,gear,mpg, condition ----mpg > 20 AND cyl == 6
dt2 <- data.table(mtcars)[mpg > 20 & cyl == 6, .(cyl,gear,mpg)]
View(dt2)

# Question : 
# of all cars with mpg > 20
# average hp  , best quartile mile for all cars
# grouped by cylindars & gears < 5
dt3 <- data.table(mtcars)[mpg > 20,
                          .(AvgHP = mean(hp), Best_QM = min(qsec)),
                          by = .(cyl, U5gears = gear < 5)]

View(dt3)

# creating Dtcars & Dtcolors Data Table to perform join operation 

          # Creating dtCars Data table

Cars<- c('F-150','Camaro','Lexus','Pathfinder','Focus','BMW')
Types <- c('Truck','Sport','Sedan','mini','Suv','Sedan')
color_id <- c(1,2,1,3,4,5)
dfcars <- data.table(Cars,Types,color_id)

          #Creating dtColors Data table
color_name <- c('Red','White','Grey','Black','Pink')
color_id <- c(1,2,3,4,6)
dfcolors <- data.table(color_id,color_name)

          #inner join
merge(dfcars,dfcolors, by = 'color_id')
          #outer join
merge(dfcars,dfcolors, by = 'color_id', all = TRUE)
          #left join 
merge(dfcars,dfcolors, by ='color_id',all.x = T)
          # Right join
merge(dfcars,dfcolors , by = 'color_id',all.y = T)








