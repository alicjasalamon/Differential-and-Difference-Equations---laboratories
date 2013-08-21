clear all;
n=40;
h=1/n;
t=2000;
l=0.0001;

tic
wypelnij_u_jawnie;
toc
tic
wypelnij_u_niejawnie;
toc
bledy

x=0:h:1;
y=0:l:t*l;

[x,y]=meshgrid(x, y);

mesh(x, y, u')
figure
mesh(x, y, u2')
figure
mesh(x, y, tab_bledow_1')
figure
tab_bledow_2(1,:)=0;
mesh(x, y, tab_bledow_2')

tabele_bledow

%%%%%%%%%%%%%%%%%%%%

clear all;
n=80;
h=1/n;
t=4000;
l=0.00005;

tic
wypelnij_u_jawnie;
toc
tic
wypelnij_u_niejawnie;
bledy
toc

x=0:h:1;
y=0:l:t*l;

mesh(x, y, u')
figure
mesh(x, y, u2')
figure
mesh(x, y, tab_bledow_1')
figure
tab_bledow_2(1,:)=0;
mesh(x, y, tab_bledow_2')

tabele_bledow