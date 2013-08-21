bledy_t=zeros(4,5);
for i=2:5
    for j=2:6
        bledy_t(i-1,j-1)=abs(u(1+(i-1)*10 , 1+(j-1)*400)-suma(i*h, j*l));
    end 
end

bledy_t

for i=2:5
    for j=2:6
        bledy_t(i-1,j-1)=abs(u2(1+(i-1)*10 , 1+(j-1)*400)-suma(i*h, j*l));
    end 
end

bledy_t