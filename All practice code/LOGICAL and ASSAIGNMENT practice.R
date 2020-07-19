g<- 1
h<- 0
as.logical(g)
as.logical(h)

g & h
g | h

g && h
g || h

g != h

pop <- c(0,1,2,3)
!pop

pos <- c(0,1,0,3)

pop & pos         # work as logical AND 
pop | pos         # work as logical OR

as.logical(pop)
as.logical(pos)
