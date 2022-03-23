fs=44100; 
t=0:0.000117:3;

note_do= sin(2*pi*261.6*t);
note_re= sin(2*pi*293.7*t);
note_mi= sin(2*pi*329.6*t);
note_fa= sin(2*pi*349.2*t);
note_sol= sin(2*pi*392*t);
note_la= sin(2*pi*440*t);
note_si= sin(2*pi*493.9*t);
note_do2= sin(2*pi*523.5*t);

y=note_do;

A = linspace(0, 0.9, (length(y)*0.3));       %rise 35% of signal
D = linspace(0.9, 0.7,(length(y)*0.3));    %drop of 5% of signal
S = linspace(0.7, 0.7,(length(y)*0.1));    %delay of 40% of signal
R = linspace(0.7, 0,(length(y)*0.3));      %drop of 25% of signal
ADSR = [A D S R] ;

x = zeros(size(y));
x(1:length(ADSR)) = ADSR;

tone=y.* x;

sound(tone,fs);