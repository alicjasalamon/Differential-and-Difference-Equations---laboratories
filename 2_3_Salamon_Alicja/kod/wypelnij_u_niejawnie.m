u2=zeros(n+1, t+1);
u2(:,1)=1;
u2(n+1,:)=0;
u2(1,:)=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% macierz G - wspolczynnikow

G=zeros(n-1,n-1);
for i=2:n-2
    G(i, i-1) = -l/h^2;
    G(i, i) = (h^2+2*l)/h^2;
    G(i, i+1) = -l/h^2;
end
   
    G(1,1)= (h^2+2*l)/h^2;
    G(n-1,n-1)=(h^2+2*l)/h^2;
    G(1,2)= -l/h^2;
    G(n-1,n-2)= l;
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pierwsza macierz H

H=zeros(n-1,1);
for i=1:n-1
    H(i, 1)=1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tworzenie u2

G=inv(G);
for j=2:t-1
    pom=G*H;
                                 %%%%%wpisz do u2;
    for i=2:n
        u2(i,j)=pom(i-1, 1);
    end
    H=pom;
end