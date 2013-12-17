clear all
close all

set(0, 'DefaultFigureRenderer', 'opengl');
set(0,'DefaultFigureWindowStyle','docked');

x=linspace(-1e15,1e15,1e3);
z=1.01-1./(1+exp(-x/14e13));

plot(z)

