
function [bs] = bissec(a, b, tol=1e-5)
  c=(a+b)/2;
  n_iter = 500;
  while (1/cosh(c)-cos(c))>tol && n_iter<0
    if (1/cosh(a)-cos(a))*(1/cosh(c)-cos(c)) <0
      b=c;
    else
      a=c;
    endif
    n_iter = n_iter-1;
    c = (a+b)/2;
  endwhile
  bs = c;
endfunction

