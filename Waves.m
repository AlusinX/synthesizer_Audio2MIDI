clc
clear all
close all

t = (0:0.01:2*pi);

SineWave = sin(2*pi*t);
plot(SineWave);
hold on
nexttile

SquareWave = square(t);
plot(SquareWave);
hold on
nexttile

SawWave = sawtooth(t);
plot(SawWave);
hold off
nexttile

grid on



