
#fonction par défaut f(x) = -10x +2
function [x,err] = secante(x0=10,tol=0.0001, f = @(x) -10*x +2)
  x = f(x0);
  x1 = x - f(x)*(x-x0)/(f(x)-f(x0));
  while(abs(x-x1) > tol)
  x0 = x;
  x = x1;
  x1 = x - f(x)*(x-x0)/(f(x)-f(x0));
  end
  err = abs(x-x1);
return;
end


