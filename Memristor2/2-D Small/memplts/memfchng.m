close all
clear all

hold all
load('2dmem_freq_01.mat')

plot(Vt(5e3:t),q*I2(5e3:t))

load('2dmem_f1.mat')

plot(Vt(5e3:t),q*di/dt*I2(5e3:t))

load('2dmem_f1e1.mat')

plot(Vt(5e3:t),q*di/dt*I2(5e3:t))

legend('f = 0.1 Hz','f = 1 Hz','f = 10 Hz','location','northwest') 
xlabel('Applied Voltage (V)')
ylabel('Current Density (A/m^2)')