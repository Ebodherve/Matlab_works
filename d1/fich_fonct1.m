
%vecteur ligne
function [b] = ligne(v)
  [n, m] = size(v);
  if m==1
    b=v';
   else
    b=v;
  endif
endfunction


%1-
function [vr] = matvec(A,x,n,m)
  c = 1:n;
  for i=1:n
    c(i) = A(i,1:m)*x';
  endfor
  vr = c;
endfunction 

%version prof 
function [vr] = matvec_prof(A,x,n,m)
  x = ligne(x);
  c = 1:n;
  for i=1:n
    c(i) = A(i,1:m)*x;
  endfor
  vr = c;
endfunction

%2-
function [vr] = vecmat1(x,A,n,m)
  c = 1:m;
  for i=1:m
    c(i) = x*A(1:n,i);
  endfor
  vr=c;
endfunction

%A : n ligne et B : m colonne

%3-a
function [mr] = prodmat(A,B,n,m)
%A doit avoir n ligne et B 
  c = zeros(n,m);
  for i=1:n
    for j=1:m
      c(i,j) = A(i,1:m)*B(1:m,j);
    endfor
  endfor
  mr=c;
endfunction

%3-b
'
function [mr] = prodmatvec(A,B,n,m)
  c = zeros(n,m);
  for i= 1:m
    c(i,1:n) = matvec(B,A(i,1:m),n,m);
  endfor
  mr=c;
endfunction'
'
function [mr] = prodmatvec(A,B,n,m)
  c = zeros(n,m);
  for i= 1:n
    c(1:n,i) = matvec(A,B(1:m,i),n,m);
  endfor
  mr=c;
endfunction'

function [val] = f1(v1)
  val = 2*v1
endfunction

function [mr] = prodmatvec(A,B,n,m)
  c = zeros(n,m);
  for i= 1:n
    c(i,i) = f1(i);
  endfor
  mr=c;
endfunction

%exo1: passage de vecteur à lisnpace

%parametre v = [dv:pas:fv]
%retour [dl, fl, nl]

function [dl, fl, nl] = vect_lin(dv, pas, fv)
  dl = dv;
  fl = fv - mod((fv-dv),pas);
  nl = floor((fv-dv)/pas + 1);
endfunction

m1 = [7 8 9; 4 12 36; 89 4 6]
m2 = [7 8 90; 4 1 3; 8  4 -4]

prodmatvec(m1,m2,3,3)


%Produit matricielle
'function [mr] = prodmat(a,b)
  n = size(a)
  n = n(1)
  m = n(2)
  c = zeros(n,m)
  for i=1:n
    for j=1:m
      c(i,j) = 
    endfor
  endfor
endfunction
'


