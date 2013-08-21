function [k]=suma(xi,tj)
    sum=0;
    elem=0;
    
    for i=1:10
        elem=(1-(-1)^i)/(i)*exp(-1*pi^2*i^2*tj)*sin(pi*i*xi);
        sum=sum+elem;
    end
    k=2/pi*sum;
end
