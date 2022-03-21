seq3 <- seq(-100, 100, by=0.6)
seq3

avg <- mean(seq3)
avg

sortedSeq3 <- sort(seq3, decreasing = TRUE)
sortedSeq3

z <- c(1:3,NA) 
result <- is.na(z)
result

vec1 <- c('Hockey', 'Football', 'Baseball', 'Curling', 'Rugby', 'Hurling', 'Basketball', 'Tennis', 'Cricket', 'Lacrosse')
vec2 <- c('Hockey', 'Lacrosse', 'Hockey', 'Water Polo', 'Hockey', 'Lacrosse')
vec2 <- append(vec1, vec2)
vec2

vec3 <- c(vec2[1], vec2[3], vec2[6])
vec3

vec3 <- as.factor(vec3)
vec3
class(vec3)

num_vect <- c(0.5, 55, -10, 6)

tf <- num_vect<1
tf


my_char <- c("My", "name", "is")

paste(my_char, collapse = " ")
my_name <- c(my_char, "Garry")
my_name
paste(my_name, collapse = " ")

paste("Hello", "world!", sep = " ")

paste(c(1:3), c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep = "-")

