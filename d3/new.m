
% La fonction par défaut est : f(x) = -8x + 2 et sa dérivée est -8

function [x,err] = new(x0=1,tol=0.0000001,f= @(x) -8*x +2, fp=@(x) -8)
  x1 = x0;
  x = x1 - f(x1)/fp(x1);
  while(abs(x-x1) > tol)
  x = x1 - f(x1)/fp(x1);
  x1 = x;
  end
  err = abs(x-x1);
return;
end

#function [x,err] = new(x0=1,tol=0.0000001,f= @(x) -8*x +2, fp=@(x) -8)
