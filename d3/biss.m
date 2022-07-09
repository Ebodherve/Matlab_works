
%La fonction par défaut est x^2 -8x +2
function [a,b] = biss(a=1,b=10,f=@(x) x^2 -8*x + 2,tol=0.00001)

  while(abs(a-b) > tol)
    c = (a+b)/2;
    fc = f(c); 
    fa = f(a); 
    fb = f(b);
    if( c == a | c == b)
      return;
    end
    if(fc == 0)
      a = c;
      b = c;
      return
    else
    if(fc*fb < 0)
      a = c;
    else
      b = c;
    end
  end
return;
end



