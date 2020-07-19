#creating matrices using -----   Matrix () function -----------
mat = matrix(
  c('a','b','c','d','e','f','g','h'),
  nrow = 2,
  ncol = 4,
  byrow = TRUE
)
mat[2,4]

#extracting specific columns using ----- c() function -------
mat[,c(1,3)]
mat[,c(2,4)]

#assigning names to ROWS & COLUMNS      ---dimnames() & list() function 
dimnames(mat) <- list(
  c('Row1','Row2'),
  c('col1','col2','col3','col4')
)
mat
#Transpose of matrix using    t() function 
t(mat)

mat1 = matrix(
  c('a1','b1','c1','d1','e1','f1','g1','h1'),
  nrow = 2,
  ncol = 4,
  byrow = TRUE
)
dimnames(mat1) <- list(
  c('Row3','Row4'),
  c('col5','col6','col7','col8')
)

# combining two matrices using       rbind () function 
rbind(mat,mat1)

# combining two matrices using       cbind () function 
cbind(mat,mat1)

#deconstructing a matrices
c(mat)

# using seq() to insert data in matrices 

mat2 = matrix(
  seq(2:13),
  nrow = 3,
  ncol = 4,
  byrow = TRUE
)
mat2
#rm(at2)

#using c() function to insert data in matrices 
mat3 = matrix(
  c(2:13),
  nrow = 3,
  ncol = 4,
  byrow = TRUE
)
mat3
