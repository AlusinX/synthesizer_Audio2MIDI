prompt1 = 'How much PreDelay on your Reverb? [0~1] ' ;
PreDelay = input(prompt1);

prompt2 = 'How much Wet is your Reverb? [0~1]' ;
WetDryMix = input(prompt2);

prompt3 = 'How much Diffusion on your Reverb? [0~1]' ;
Diffusion = input(prompt3);

prompt5 = 'How much HighFrequencies do want to cut?' ;
HighCutFrequency = input(prompt5);

[audioIn, Fs] = audioread('INITTEST.mp3');
audioIn = [audioIn ; zeros(round(Fs * 0.5),2)];
r = reverberator('SampleRate',Fs, 'PreDelay',PreDelay, 'WetDryMix',WetDryMix, 'Diffusion',Diffusion, 'HighCutFrequency',HighCutFrequency );
audioOut = r(audioIn);
sound(audioOut,Fs)

