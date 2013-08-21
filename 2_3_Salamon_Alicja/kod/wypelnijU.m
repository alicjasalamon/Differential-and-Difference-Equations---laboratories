n=40;
h=1/n;
t=2000;
l=0.0001;

u=zeros(n+1, t+1);
u(:,1)=1;
u(n+1,:)=0;
u(1,:)=0;

for j=2:t+1
    for i=2:n 
        u(i,j) = (u(i+1, j-1) + u(i-1, j-1))*l/h^2 + (h^2-2*l)/h^2*u(i, j-1);
    end
end

x=0:h:1;
y=0:l:0.2;
[x,y]=meshgrid(x, y);
u=u';
mesh(x, y, u)
u=u';