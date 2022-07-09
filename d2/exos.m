
## 1.14

#d-
# a122 = 1.4028e+25

#e- 

#f-
B = fibo(50)(2:50)./fibo(49);
#formule
n=50
B = fibo(n)(2:n)./fibo(n-1);


#g -
plot(1:n-1, B)

#h - nombre d'or = 1.6180

## 1.15 

#a -
vfac = 1;
nfac = 170;
while nfac > 0
  vfac = vfac*nfac;
  nfac = nfac-1;
endwhile

#b -
nfac = 170;
vfac = 1;
for i=1:nfac
  vfac = vfac*i;
endfor

#c - 
factorial(170)

#d - Inf


