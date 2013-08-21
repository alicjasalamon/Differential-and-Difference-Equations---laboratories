n=10;
while n<1001
 
    bledy=zeros(n-1,1);
    h=1/n;
    wypelnijA;
    wypelnijB;
   
    disp('CZAS DLA INV(A)')
    tic
    u=inv(A)*B;
    toc

    disp('CZAS DLA A\B)')
    tic
    u=A\B;
    toc

    disp('CZAS DLA WLASNEGO GAUSSA)')
    tic
    gauss;
    u=C*B;
    toc
    
    disp('   ')
    
    x=linspace(h, (n-1)*h, n-1);
    figure
    plot(x,u,'b')
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    u=u';
    bledy=zeros(1,9);
    for i=1:9
        bledy(1,i)=abs(u(1,i*n/10)-f(i*0.1, a, b, c, u0, u1));
    end
    bledy
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    n=n*10;
end

    