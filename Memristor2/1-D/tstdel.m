close all
clear all


ni=1e3;
x=linspace(0,2e16,ni);

f=1./(1+exp((1*x-0.5e16)/12e14));

plot(x,f)
