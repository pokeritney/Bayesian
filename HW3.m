%1. Mendel's Pea
betacdf(3/4,802,282)
%ans =0.7754
L=betainv(0.025,802,282)
%L =0.7133
U=betainv(0.975,802,282)
%U =0.7655

[betainv(0.025,802,282)  betainv(0.975,802,282)] %alpha/2
%L =0.7133   %U =0.7655
lengtheqt = betainv(0.975,802,282)-betainv(0.025,802,282)  %0.0522
xx=0:0.001:1
betadist=betapdf(xx,802,282)
figure(2)
plot(xx, betadist,'k-','linewidth',2)
hold on
plot(L, betapdf(L,802,282), 'o')
plot(L, 0, 'ro')
plot(U, betapdf(U,802,282), 'o')
plot(U, 0, 'ro')
plot([U L],[0  0], 'r-','linewidth',8)
plot([U L],[betapdf(L,802,282)  betapdf(U,802,282)], ...
         'k-','linewidth',1)
hold off

%2. Gamma Precision
gaminv(0.025,17/2,1/6)
%ans =0.6303
gaminv(0.975,17/2,1/6)
%ans =2.5159
