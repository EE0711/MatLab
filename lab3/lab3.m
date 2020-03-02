function y = lab3(t)
if nargin == 0
    t = 0:0.01:7; %kopeejais t
end
%% Pareejos laikus izteiksim ar datu filtraaciju
%t_saw1 = 0:0.01:0.5;
t_saw_f = (t>=0)&(t<0.5);
t_saw1 = t(t_saw_f);
%t_saw2 = 0.5:0.01:1;
t_saw2_f = (t>=0.5)&(t<1);
t_saw2 = t(t_saw2_f);
%t_const1 = 1:0.01:3;
t_const1_f = (t>=1)&(t<3);
t_const1 = t(t_const1_f);
%t_sin = 3:0.01:4;
t_sin_f = (t>=3)&(t<4);
t_sin = t(t_sin_f);
%t_noise = 4:0.01:5.5;
t_noise_f = (t>=4)&(t<5.5);
t_noise = t(t_noise_f);
%t_const2 = 5.5:0.01:7;
t_const2_f = (t>=5.5)&(t<=7);
t_const2 = t(t_const2_f);
%sin
A0=0; A=2.5;
T = (4-3)/2 ; f=1/T;
delay = 3;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin);
%axis([0 7 -3 3]);
% sliipaanr1
k=(-1-0)/(0-0.5);
delay = 0.5;
y_saw1 = k*(t_saw1-delay);
%hold on
%plot(t_saw1,y_saw);
% sliipaa nr2
k=(0-1)/(0.5-1);
delay = 0.5;
y_saw2 = k*(t_saw2-delay);
%plot(t_saw2,y_saw);
% horizontaalaa1
y_const1 = 0+zeros(size(t_const1));
%plot(t_const1,y_const);
% horizontaalaa2
y_const2 = 2.5+zeros(size(t_const2));
%plot(t_const2,y_const);
% troksnis
y_noise = 2.5*rand(size(t_noise))-1.25;
%plot(t_noise,y_noise);
%%apvieno visus signaalus
t = [t_saw1,t_saw2,t_const1,t_sin,t_noise,t_const2];
y = [y_saw1,y_saw2,y_const1,y_sin,y_noise,y_const2];
if nargout == 0
    plot(t,y)
    y=[];
end


