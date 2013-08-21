function[y]=f(x, a, b, c, u0, u1)
    k=(2*c^2*(u1-u0)-(a*c+2*a+2*b*c))/(2*c*exp(c)-1);
    y=(k/c)*(exp(c*x)-1)+(a/(2*c)*x^2)+((a/c^2)+(b/c))*x+u0;
end