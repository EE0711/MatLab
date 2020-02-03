%%meerijumu datu apstrade

% pienjemsim ka ir meerijuma dati
%mainam spriegumu un meeram straavu
Vm = [-1 0.3 1.5 2.5 3.2]

Vm =

   -1.0000    0.3000    1.5000    2.5000    3.2000

Im[1.1 2.2 2.1 3.2 4.7]*1e-3;
 Im[1.1 2.2 2.1 3.2 4.7]*1e-3;
   ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'-o')
% pitelaikosim polinomu (otraas kaartas) y=ax^2+bx+c
%polyfit - meklee polinomu koeficentus
% C = polyfit(x,y,N)
N = polinomu kaarta
 N = polinomu kaarta
              ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
} 
%N = polinomu kaarta
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

%shie cipari noziime y=C(1)x^2 +C(2)x+C(3)
%defineesim x ar mazaaku soli
V = -1:0.01:3.2;
% V = min(Vm):0.01:max(Vm);
% V = Linespace(min(Vm),max(Vm),100);
I = C(1)*V.^2+C(2)*V+C(3);
hold on
plot(V,I)
hold off
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

I2 = C(1)*V.^3+C(2)*V.^2+C(3)*V+C;
{Matrix dimensions must agree.
} 
I2 = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I2)
% to pashu var izdariit shaadi
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

%izmantosim polyval funkc, kas apreekjinaas polinoma veertiibas
%I2 = C(1)*V.^3+C(2)*V.^2+C(3)*V+C;
I2 = polyval(C,V)

I2 =

  Columns 1 through 10

    0.0011    0.0011    0.0011    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012    0.0013

  Columns 11 through 20

    0.0013    0.0013    0.0013    0.0013    0.0013    0.0014    0.0014    0.0014    0.0014    0.0014

  Columns 21 through 30

    0.0014    0.0014    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015

  Columns 31 through 40

    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0017

  Columns 41 through 50

    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0018

  Columns 51 through 60

    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018

  Columns 61 through 70

    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019

  Columns 71 through 80

    0.0019    0.0019    0.0019    0.0019    0.0019    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 81 through 90

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 91 through 100

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 101 through 110

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 111 through 120

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 121 through 130

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 131 through 140

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 141 through 150

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 151 through 160

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 161 through 170

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 171 through 180

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 181 through 190

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 191 through 200

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 201 through 210

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 211 through 220

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 221 through 230

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 231 through 240

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 241 through 250

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 251 through 260

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0023

  Columns 261 through 270

    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023

  Columns 271 through 280

    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023

  Columns 281 through 290

    0.0023    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024

  Columns 291 through 300

    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0025    0.0025    0.0025    0.0025

  Columns 301 through 310

    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0026    0.0026

  Columns 311 through 320

    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0027    0.0027

  Columns 321 through 330

    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0028    0.0028    0.0028

  Columns 331 through 340

    0.0028    0.0028    0.0028    0.0028    0.0028    0.0029    0.0029    0.0029    0.0029    0.0029

  Columns 341 through 350

    0.0029    0.0029    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0031    0.0031

  Columns 351 through 360

    0.0031    0.0031    0.0031    0.0031    0.0031    0.0032    0.0032    0.0032    0.0032    0.0032

  Columns 361 through 370

    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0034    0.0034    0.0034    0.0034

  Columns 371 through 380

    0.0034    0.0035    0.0035    0.0035    0.0035    0.0035    0.0036    0.0036    0.0036    0.0036

  Columns 381 through 390

    0.0037    0.0037    0.0037    0.0037    0.0038    0.0038    0.0038    0.0038    0.0038    0.0039

  Columns 391 through 400

    0.0039    0.0039    0.0039    0.0040    0.0040    0.0040    0.0040    0.0041    0.0041    0.0041

  Columns 401 through 410

    0.0042    0.0042    0.0042    0.0042    0.0043    0.0043    0.0043    0.0043    0.0044    0.0044

  Columns 411 through 420

    0.0044    0.0045    0.0045    0.0045    0.0046    0.0046    0.0046    0.0046    0.0047    0.0047

  Column 421

    0.0047

plot(Vm,Im,'o',V,I2)
%% uzdevums: atkaartot to pashu 4 kaartai
C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

I2 = polyval(C,V)

I2 =

  Columns 1 through 10

    0.0011    0.0011    0.0012    0.0012    0.0012    0.0012    0.0013    0.0013    0.0013    0.0013

  Columns 11 through 20

    0.0014    0.0014    0.0014    0.0014    0.0015    0.0015    0.0015    0.0015    0.0015    0.0016

  Columns 21 through 30

    0.0016    0.0016    0.0016    0.0016    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017

  Columns 31 through 40

    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0019    0.0019    0.0019

  Columns 41 through 50

    0.0019    0.0019    0.0019    0.0019    0.0019    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 51 through 60

    0.0020    0.0020    0.0020    0.0020    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 61 through 70

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0022    0.0022

  Columns 71 through 80

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 81 through 90

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 91 through 100

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 101 through 110

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 111 through 120

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 121 through 130

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 131 through 140

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 141 through 150

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0021

  Columns 151 through 160

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 161 through 170

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 171 through 180

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 181 through 190

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0020    0.0020

  Columns 191 through 200

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 201 through 210

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 211 through 220

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 221 through 230

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 231 through 240

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 241 through 250

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 251 through 260

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 261 through 270

    0.0021    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 271 through 280

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0023    0.0023    0.0023    0.0023

  Columns 281 through 290

    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0024    0.0024

  Columns 291 through 300

    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0025    0.0025

  Columns 301 through 310

    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0026    0.0026    0.0026

  Columns 311 through 320

    0.0026    0.0026    0.0026    0.0026    0.0026    0.0027    0.0027    0.0027    0.0027    0.0027

  Columns 321 through 330

    0.0027    0.0027    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0029

  Columns 331 through 340

    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0030    0.0030    0.0030    0.0030

  Columns 341 through 350

    0.0030    0.0030    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0032    0.0032

  Columns 351 through 360

    0.0032    0.0032    0.0032    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0034

  Columns 361 through 370

    0.0034    0.0034    0.0034    0.0034    0.0035    0.0035    0.0035    0.0035    0.0035    0.0036

  Columns 371 through 380

    0.0036    0.0036    0.0036    0.0036    0.0037    0.0037    0.0037    0.0037    0.0037    0.0038

  Columns 381 through 390

    0.0038    0.0038    0.0038    0.0039    0.0039    0.0039    0.0039    0.0039    0.0040    0.0040

  Columns 391 through 400

    0.0040    0.0040    0.0040    0.0041    0.0041    0.0041    0.0041    0.0042    0.0042    0.0042

  Columns 401 through 410

    0.0042    0.0043    0.0043    0.0043    0.0043    0.0043    0.0044    0.0044    0.0044    0.0044

  Columns 411 through 420

    0.0045    0.0045    0.0045    0.0045    0.0046    0.0046    0.0046    0.0046    0.0047    0.0047

  Column 421

    0.0047

plot(Vm,Im,'o',V,I2)
plot(Vm,Im,'-o',V,I2)
%gadiijumu kad pielaikotaa polinoma kaarta ir vienaada ar n-1, kur n punktu skaits
%sauc par polinomiaalo interpolaaciju
%(polinoms iet tieshi caur meerijuma punkt)
%% bet citus sauc par polinomiaalo aproximaaciju(tad liinija tuvojas tiem punktiem)

% Uzdevums atkaartot pirmai kaartai(taisne?)
C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

I2 = polyval(C,V)

I2 =

  Columns 1 through 10

    0.0010    0.0010    0.0010    0.0010    0.0010    0.0010    0.0010    0.0010    0.0010    0.0010

  Columns 11 through 20

    0.0010    0.0010    0.0010    0.0010    0.0011    0.0011    0.0011    0.0011    0.0011    0.0011

  Columns 21 through 30

    0.0011    0.0011    0.0011    0.0011    0.0011    0.0011    0.0011    0.0012    0.0012    0.0012

  Columns 31 through 40

    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012    0.0012

  Columns 41 through 50

    0.0012    0.0013    0.0013    0.0013    0.0013    0.0013    0.0013    0.0013    0.0013    0.0013

  Columns 51 through 60

    0.0013    0.0013    0.0013    0.0013    0.0014    0.0014    0.0014    0.0014    0.0014    0.0014

  Columns 61 through 70

    0.0014    0.0014    0.0014    0.0014    0.0014    0.0014    0.0014    0.0014    0.0015    0.0015

  Columns 71 through 80

    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015    0.0015

  Columns 81 through 90

    0.0015    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016    0.0016

  Columns 91 through 100

    0.0016    0.0016    0.0016    0.0016    0.0016    0.0017    0.0017    0.0017    0.0017    0.0017

  Columns 101 through 110

    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0017    0.0018    0.0018

  Columns 111 through 120

    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018    0.0018

  Columns 121 through 130

    0.0018    0.0018    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019    0.0019

  Columns 131 through 140

    0.0019    0.0019    0.0019    0.0019    0.0019    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 141 through 150

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0021    0.0021

  Columns 151 through 160

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021    0.0021

  Columns 161 through 170

    0.0021    0.0021    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 171 through 180

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0023    0.0023    0.0023    0.0023    0.0023

  Columns 181 through 190

    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0023    0.0024

  Columns 191 through 200

    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024    0.0024

  Columns 201 through 210

    0.0024    0.0024    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025

  Columns 211 through 220

    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0026    0.0026    0.0026    0.0026

  Columns 221 through 230

    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0027

  Columns 231 through 240

    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027

  Columns 241 through 250

    0.0027    0.0027    0.0027    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028

  Columns 251 through 260

    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0029    0.0029    0.0029    0.0029

  Columns 261 through 270

    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029

  Columns 271 through 280

    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030

  Columns 281 through 290

    0.0030    0.0030    0.0030    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031

  Columns 291 through 300

    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0032    0.0032    0.0032    0.0032

  Columns 301 through 310

    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032

  Columns 311 through 320

    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033

  Columns 321 through 330

    0.0033    0.0033    0.0033    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034

  Columns 331 through 340

    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0035    0.0035    0.0035

  Columns 341 through 350

    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035

  Columns 351 through 360

    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036

  Columns 361 through 370

    0.0036    0.0036    0.0036    0.0036    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037

  Columns 371 through 380

    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0038    0.0038    0.0038

  Columns 381 through 390

    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038

  Columns 391 through 400

    0.0038    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039

  Columns 401 through 410

    0.0039    0.0039    0.0039    0.0039    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040

  Columns 411 through 420

    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0041    0.0041    0.0041

  Column 421

    0.0041

plot(Vm,Im,'-o',V,I2)

%semicoloni lol
%% meerijumu datu seerijas
% pienjemsim ka mees katrai sprieguma veertiibai straavu nomeerisim 5x
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7; 0.9 1.8 2.6 3.3 4.5; 1.0 2.0 2.4 3.4 4.3; 0.8 2.1 2.5 3.2 4.6; 0.9 1.9 2.3 3.2 4.4]

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

%pameegjinaasim to uzzimeet ar plot
hfigure
{Undefined function or variable 'hfigure'.
} 
figure
plot(Vm,Im,'-o')
% matlab ziime matricas pa kolonnam
% musu dati bija ierakstiiti pa rindam
%taapeec ir jatranspone matrica
plot(Vm,Im','-o')
% Pielaikosim polinomu
%polyfit
%straada tikai vektoriem
% ir funkc, kas sasumme vektoru
sum(Im) %straadaa pa kolonnam

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

%videejaa veert buuto /5
Ivid - sum(Im)/5\
 Ivid - sum(Im)/5\
                  ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
Ivid - sum(Im)/5
{Undefined function or variable 'Ivid'.
} 
Ivid = sum(Im)/5

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

sum(Im,1)

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

sum(Im,2)

ans =

   13.3000
   13.1000
   13.1000
   13.2000
   12.7000

% ,1 summe kolonnas ,2 kolonnas
% ,1 ir nokluseetaa
mean(Im)

ans =

    0.9400    2.0000    2.3800    3.2600    4.5000

% mean() funkcija apreekj videejo
% pielaikot polinomu
C = polyfit(Vm,Ivid,3);
V = linespace(min(Vm),max(Vm),100);
{Undefined function or variable 'linespace'.
} 
V = linespace(min(Vm),max(Vm),100);
{Undefined function or variable 'linespace'.
} 
V = linespace(min(Vm),max(Vm),100);
{Undefined function or variable 'linespace'.
} 
V = linspace(min(Vm),max(Vm),100);
%attelot graph
%ar o meerijumu datus
%ar * vid veert
%ar - pielaikoto polinomu
C = polyfit(V,Ivid,3);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
plot(Vm,Im,'o')
plot(Vm,Im','o')
hold on
plot(Vm,Ivid,'*')
plot(V,I,'-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(V,I2,'-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
I2 = polyval(C,V)

I2 =

  Columns 1 through 10

    0.9421    1.0017    1.0590    1.1142    1.1672    1.2182    1.2671    1.3141    1.3592    1.4025

  Columns 11 through 20

    1.4439    1.4836    1.5217    1.5581    1.5929    1.6262    1.6580    1.6884    1.7174    1.7452

  Columns 21 through 30

    1.7716    1.7969    1.8210    1.8441    1.8661    1.8871    1.9072    1.9264    1.9448    1.9624

  Columns 31 through 40

    1.9793    1.9955    2.0111    2.0262    2.0408    2.0550    2.0687    2.0821    2.0952    2.1081

  Columns 41 through 50

    2.1209    2.1335    2.1460    2.1585    2.1711    2.1838    2.1966    2.2096    2.2229    2.2365

  Columns 51 through 60

    2.2504    2.2648    2.2796    2.2950    2.3110    2.3276    2.3448    2.3629    2.3817    2.4014

  Columns 61 through 70

    2.4219    2.4435    2.4660    2.4897    2.5144    2.5403    2.5675    2.5959    2.6257    2.6569

  Columns 71 through 80

    2.6895    2.7236    2.7592    2.7965    2.8355    2.8761    2.9185    2.9628    3.0089    3.0570

  Columns 81 through 90

    3.1070    3.1591    3.2133    3.2696    3.3281    3.3889    3.4520    3.5174    3.5853    3.6557

  Columns 91 through 100

    3.7285    3.8040    3.8821    3.9629    4.0464    4.1327    4.2219    4.3139    4.4090    4.5070

plot(V,I2,'-')

Inovirze = std(Im)

Inovirze =

    0.1140    0.1581    0.1924    0.0894    0.1581

errorbar(Vm,Im,Inovirze)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('errorbar>checkSingleInput', '/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/errorbar.m', 264)" style="font-weight:bold">errorbar>checkSingleInput</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/errorbar.m',264,0)">line 264</a>)
XData must be the same size as YData.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('errorbar', '/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/errorbar.m', 94)" style="font-weight:bold">errorbar</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/errorbar.m',94,0)">line 94</a>)
x = checkSingleInput(x, sz, 'XData');
} 
errorbar(Vm,Ivid,Inovirze,'.')
hold off
errorbar(Vm,Ivid,Inovirze,'.')
hold on
plot(V,I)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(V,I2)
hold off
xlabel('U,V')
ylabel('I,mA')
title('Straavas atkariiba no sprieguma')
legend('eksperimentalie dati,pielaikotais polinoms')
legend('eksperimentalie dati','pielaikotais polinoms')
grid
ls
bilde1.png  bilde2.png	labl_diary.m

%% datu nolasiishana no graphica
imread('bilde1.png');
A = imread('bilde1.png');
B = imread('bilde2.png');
figure(1),image(A)
figure(2),image(B)
figure(2),image([500 800],[0 1]B)
 figure(2),image([500 800],[0 1]B)
                                ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
} 
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[1 0],B)
set(gca,'YDir','normal')
%% tgd var nolasiit graph ar funkc
%ginput(N)
[x,y] = ginput(10)

x =

  174.5780
  203.9704
  233.7769
  256.9597
  283.0403
  304.9812
  323.1962
  337.6855
  367.0780
  410.1317


y =

  216.7835
  209.1207
  190.7299
  158.9291
   94.5613
   57.3966
   79.2356
  125.2126
  181.9176
  209.1207

hold on
plot(x,y,'o')
figure(1)
diary off
