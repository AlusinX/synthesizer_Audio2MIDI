%  15 שקפים
%% Readmidi structure @ midinfo.m
%% File handling , naming
addpath("C:\Users\Alusin\Documents\MATLAB\Alusineizer\matlab-midi-master\src");
[filename, fullpath] = uigetfile("*.wav", "Please Select what to load");
fullpath = string(fullpath); filename = string(filename); 
fullpath_save = fullpath + replace(filename, ".wav", ".mid");
fullpath_open = fullpath + filename;
audiomidipath = "C:\Python27\audio2midi\audio_to_midi_melodia.py";
pypath = "C:\Python27\python.exe";

% Command = pypath + " " + audiomidipath +" " + fullpath_open+ " " +  fullpath_save +" "+  "60 --smooth 0.25 --minduration 0.1" ;
% the above is an example.

Command = pypath + " " + audiomidipath +" " + fullpath_open+ " " +  fullpath_save +" "+  "60 --smooth 0.3 --minduration 0.05" ; 

%Smooth - describes the sensetivity of frequency changing
%MinDuration - descrbies the minimum duration for a sound to stop trigging    
%(60) at the start - describes the amount of deltaTime between the keys.

%% Running command to extract mid from python script
system(Command)
%% Reading midi, deleting intermediate files
data = readmidi(fullpath_save); % Extracts midi custom struct documented in  https://kenschutte.com/midi/
% delete(fullpath_save)

Sound_Data = midi2audio(data, 44100,'saw');

info = midiInfo(data);
%% Playing the actual sound (Not needed in final version)
 sound(Sound_Data, 44100);