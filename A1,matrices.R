a<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
b<-matrix(c(11,12,13,14,15,16,17,18,19),nrow=3,ncol=3)
cat("\nThe 3x3 matrix A:\n")
print(a)
cat("\nThe 3x3 matrix B:\n")
print(b)
a_t<-t(a)
b_t<-t(b)
cat("\n(a). The matrix transpose * Matrix B matrix:\n")
res<-a_t*b
print(res)
cat("\n(c).(A.AT).BT:\n")
res<-(a*a_t)*b_t
cat("\n(d).[(B.BT)+(A.AT)-100I3]^-1:\n")
I3<-diag(3)
res<-solve((b*b_t)+(a*a_t)-100*I3)
print(res)
