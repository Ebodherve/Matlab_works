
function [al] = alea6()
  if rand<=1/6
    al = 1;
   elseif 1/6<rand && rand<= 2/6
    al = 2;
   elseif 2/6<rand && rand<=3/6
    al = 3;
   elseif 3/6<rand && rand<=4/6
    al = 4;
   elseif 4/6<rand && rand<=5/6
    al = 5;
   elseif 5/6<rand
    al = 6;
   endif
endfunction
