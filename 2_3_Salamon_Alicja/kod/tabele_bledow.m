tabela_bledow_1=zeros(5,6);

for i=1:5
    for j=1:6
        tabela_bledow_1(i,j)=tab_bledow_1(1+(i-1)*(n/4) , 1+(j-1)*(t/5));
    end 
end

tabela_bledow_2=zeros(5,6);

for i=1:5
    for j=1:6
        tabela_bledow_2(i,j)=tab_bledow_2(1+(i-1)*(n/4) , 1+(j-1)*(t/5));
    end 
end

tabela_bledow_1
tabela_bledow_2