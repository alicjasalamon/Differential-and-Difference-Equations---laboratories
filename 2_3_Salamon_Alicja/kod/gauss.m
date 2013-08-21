%%wlasny gauss

d= eye(n-1);
C=[A d];

for i=1: n-2
    C(i+1,:)=C(i+1,:)- (C(i+1, i)/C(i,i))*C(i,:);
end

for i=0 : n-3
    C(n-i-2,:)=C(n-i-2,:)- ...
        (C(n-i-2, n-1-i)/C(n-i-1,n-i-1))*C(n-i-1,:);
end

for i=1: n-1
    C(i,:)=C(i,:)./C(i,i);
end
C=C(1:n-1, n :2*n-2);