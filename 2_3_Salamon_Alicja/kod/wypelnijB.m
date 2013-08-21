B=zeros(n-1,1);
for i=2:n-2
    B(i)=a*i*h + b;
end

B(1)= (a*h + b) - (u0 * (-c/(2*h) - 1/(h^2)));
B(n-1)= a*(n-1)*h + b - u1* (c/(2*h) - 1/(h^2));