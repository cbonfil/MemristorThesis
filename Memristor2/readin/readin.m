close all
clear all

hold all
load('exp2V')

I1=RepeatCVExpCemSingleChannelexp32VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannelexp32VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannelexp32VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannelexp32VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannelexp32VRep5(8:1150,2);
plot(( 2/12.72e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -3.4 3.4])


load('exp3V')

I1=RepeatCVExpCemSingleChannelexp13VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannelexp13VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannelexp13VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannelexp13VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannelexp13VRep5(8:1150,2);
plot(( 3/13.35e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -3.4 3.4])


load('exp4V')

I1=RepeatCVExpCemSingleChannelexp24VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannelexp24VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannelexp24VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannelexp24VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannelexp24VRep5(8:1150,2);
plot(( 4/13.14e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -3.4 3.4])


load('exp5V')

I1=RepeatCVExpCemSingleChannelexp45VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannelexp45VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannelexp45VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannelexp45VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannelexp45VRep5(8:1150,2);
plot(smooth( 5/13.35e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -3.4 3.4])

load('exp6V')

I1=RepeatCVExpCemSingleChannelexp56VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannelexp56VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannelexp56VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannelexp56VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannelexp56VRep5(8:1150,2);
plot(smooth( 6/13.35e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -3.4 3.4])

load('exp7V')

I1=RepeatCVExpCemSingleChannel1exp67VRep1(8:1150,2);
I2=RepeatCVExpCemSingleChannel1exp67VRep2(8:1150,2);
I3=RepeatCVExpCemSingleChannel1exp67VRep3(8:1150,2);
I4=RepeatCVExpCemSingleChannel1exp67VRep4(8:1150,2);
I5=RepeatCVExpCemSingleChannel1exp67VRep5(8:1150,2);
plot(smooth( 7/14.21e3./[I1; I2; I3; I4; I5;]))
axis([0 6000 -5.4 5.4])


