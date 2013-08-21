#include<iostream>
#include<cmath>
#include<fstream>
#include<iomanip>
using namespace std;

ofstream zapis("wyjscie2.txt");
////////////////////////////////////////////FUNKCJE/////////////////////////////

double wiel3(double x);
double wiel4(double x);
double wiel5(double x);
double sinus1(double x);
double sinus2(double x);
double sinus3(double x);
double expon01(double x);
double expon1(double x);
double expon10(double x);

///////////////////////////////GENEROWANIE TABELI DLA JEDNEGO KROKU/////////////

void tabelka()
{
     zapis << "tabela "<<"h" << setw(15) << "lewo" << setw(15) << "blad";
     zapis<< setw(15) << "prawo" << setw(15) << "blad";
     zapis << setw(15) << "centr" << setw(15) << "blad";
     zapis << setw(15) << "2poch" << setw(15) << "blad" << endl;
}

void funkcja_testujaca(double (*f)(double x), double h, double war_dokl1, double war_dokl2)
{

     double pom;
     zapis << setw(10) << h;
     // oblicz poch_prawo(punkt),
     pom=(f(1+h)-f(1))/h; 
     zapis << setw(15) << pom << setw(15) << abs(pom - war_dokl1);      
     //oblicz poch_lewo(punkt),
     pom=(f(1)-f(1-h))/h;   
     zapis << setw(15) << pom << setw(15) << abs(pom - war_dokl1);     
     //oblicz poch_centr(punkt),
     pom=(f(1+h)-f(1-h))/(2*h); 
     zapis << setw(15) << pom << setw(15) << abs(pom - war_dokl1);
     //oblicz druga poch_centr(punkt),
     pom=(f(1+h)+f(1-h)-2*f(1))/(h*h); 
     zapis << setw(15) << pom << setw(15) <<abs(pom - war_dokl2);
        
     zapis << endl;    
         
}

///////////////////////////////FUNKCJA TESTUJACA DLA ROZNYCH KROKOW/////////////

int main()
{
    


    zapis << endl << endl << "dla wielomianu st 3" << endl;
    double krok=1;
    tabelka();
    while(krok>=0.00001)
    {
        funkcja_testujaca(wiel3, krok, 16, 18);
        krok=krok/10;
    }
    
    zapis << endl << endl << "dla wielomianu st 4" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(wiel4, krok, 20, 30);
              krok=krok/10;
    }
    
    zapis << endl << endl << "dla wielomianu st 5" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(wiel5, krok, 50, 150);
              krok=krok/10;
    }
 
    zapis << endl << endl << "dla sin(x)" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
        funkcja_testujaca(sinus1, krok, cos(1), -sin(1));
        krok=krok/10;
    }
    
    zapis << endl << endl << "dla sinus2x" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(sinus2, krok, 2*cos(2), -4*sin(2));
              krok=krok/10;
    }
    
    zapis << endl << endl << "dla sinus10" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(sinus3, krok, 10*cos(10), -100*sin(10));
              krok=krok/10;
    }
    
    zapis << endl << endl << "dla exp(x*0.1)" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
        funkcja_testujaca(expon01, krok, 0.1*exp(0.1), 0.01*exp(0.1));
        krok=krok/10;
    }
    zapis << endl << endl << "dla exp(x)" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(expon1, krok, exp(1), exp(1));
              krok=krok/10;
    }
    
    zapis << endl << endl << "dla exp(x*10)" << endl << endl;
    krok=1;
    tabelka();
    while(krok>=0.00001)
    {
              funkcja_testujaca(expon10, krok, 10*exp(10), 100*exp(10));
              krok=krok/10;
    }
    zapis.close();
    return 0;
}


 
////////////////////////////////////////////FUNKCJE/////////////////////////////

double wiel3(double x)
{
       return 2*x*x*x + 3*x*x + 4*x + 5;
}

double wiel4(double x)
{
       return x*x*x*x + 2*x*x*x + 3*x*x + 4*x + 5;
}

double wiel5(double x)
{
       return 6*x*x*x*x*x + x*x*x*x + 2*x*x*x + 3*x*x + 4*x + 5;
}

double sinus1(double x)
{
       return sin(x);
}

double sinus2(double x)
{
       return sin(x*2);
}

double sinus3(double x)
{
       return sin(x*10);
}

double expon01(double x)
{
       return exp(x*0.1);
} 

double expon1(double x)
{
       return exp(x);
} 

double expon10(double x)
{
       return exp(x*10);
} 
