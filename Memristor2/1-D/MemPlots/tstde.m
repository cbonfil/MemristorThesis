close all
clear all


hold all
load('Bowtie_f05_V2.mat')
plot(Vt(5e4:t),(I1(5e4:t))/(I1(1e3-150)))

hold all
load('Bowtie_f05_V3.mat')
plot(Vt(5e4:t),(I1(5e4:t))/(I1(1e3-150)))

hold all
load('Bowtie_f05_V4.mat')
plot(Vt(5e4:t),(I1(5e4:t))/(I1(1e3-150)))
% load('Bowtie_f05_V4.mat')
% plot(Vt,I1)
% plot(log10(abs(1./(Vt((t-1000):t)./I1((t-1000):t)))))
% plot(log10(abs(1./( (Vt((t-10000):t)+1e13 )./(I1((t-10000):t)+1e13)))))