%%%%%%%%%%%% tablica dokladnych wartosci

tab_dokladnych=zeros(n+1, t+1);
tab_bledow_1=zeros(n+1, t+1);
tab_bledow_2=zeros(n+1, t+1);


for i=1:n+1
    for j=1:t+1
        tab_dokladnych(i,j) = suma(i*h, j*l);
    end
end

tab_bledow_1=abs(tab_dokladnych-u);
tab_bledow_2=abs(tab_dokladnych-u2);
