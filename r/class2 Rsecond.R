
3>2 |5< 7
5<4|6<9
6 >9|9<6
6>9 |9>6

#conditional statement


if( 10>9) 
{print1<-TRUE
}else
{print1<- !TRUE}

if(B<D ){print2<-TRUE}else {print2<-!TRUE}

ifelse(10>100,print3<- TRUE,print3<-!TRUE)
ifelse(3>5,"SAY GGODBYE","NOT TRUE")

#GEnerate a sequence of numbers

1:100
354:300
-10:20
?seq
seq(100)
seq(1,87,by=5)
seq(-50,50,5)
z<-7
seq(z,100,4)

#data structures
lst <-list(0.5,5,.977)
lst
str(lst)
class(lst)

lst2<-list(3.14,"Moe",c(1,1,2,3))
?c
lst2
lst2[[2]]
lst3<-list("Hello world",7,c(1,1,2,4))
str(lst3)
lst3[[3]]
#c(1,1,2,4) is a vector within the lsit
lst4<-list("4",4,"Goodbye",8)
str(lst4)


#vectors
products<-c("cup","glass","plate","bowl")
str(products)
class(products)


qty<-c(1,3,5,8)
str(qty)


values<-c(.5,7,9,10)
str(values)

qty[3]
products[1]
values[4]

# [[]] indicates lists and [] represent vectors

qty_third<-qty[3]
firstproduct<-products[1]

#more vectors
#c() is the combine operator

height<- c(59,60,61,58,67,72,70)
weight<-c(150,140,180,220,160,140,130)

#mathematics on vectors
sum(height)
length(height)
#average of mean
sum(height)/length(height)
avg<-mean(height)
avg
mode(height)
install.packages("DescTools")#once you have  installed a package you dont 
#need to install again
library(DescTools)
Mode(weight)

modht<-Mode(weight)
avg + 10
modht
avg-10

max(weight)
min(weight)

#matrices

matrix(0,2,3)
matrix(NA,2,3)
matr<-c(1.1,2.1,1.2,2.2,3.1,3.2)
matrix1<-matrix(matr,2,3)
#type the view and utilize the view function by passing the data
rownames(matrix1)<-c("top","bottom")
colnames(matrix1)<-c("first","second","third")
matrix1


newdata<-c(0,5,10,25,35,55)
newmatrix<-matrix(newdata,2,3)
newmatrix
rownames(newmatrix)<-c("week1","week2")
colnames(newmatrix)<-c("session1","session2","session3")
newmatrix


#dataframe

col1<-c(5,10,15,20,25)
col2<-c(75,85,90,100,105)
col3<-c(1,2,4,5,6)


dtfrm<-data.frame(col1,col2,col3)
dtfrm

