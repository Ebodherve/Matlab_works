
function [f] = fibo(n)
  lin = 1:n;
  lin(2) = 1;
  for i = 3:n
    lin(i) = lin(i-1)+lin(i-2);
  endfor
  f=lin;
endfunction

