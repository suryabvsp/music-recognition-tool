

clc;
clear all;
close all;

% Read 
wavt=audioread('test.wav');
wavt2=audioread('test2.wav');
wav1=audioread('one.wav');
wav2=audioread('two.wav');
wav3=audioread('three.wav');
wav4=audioread('four.wav');
wav5=audioread('five.wav');

% correlations
crr11=xcorr2(wavt,wav1);
crr12=xcorr2(wavt,wav2);
crr13=xcorr2(wavt,wav3);
crr14=xcorr2(wavt,wav4);
crr15=xcorr2(wavt,wav5);

[M1,I1]=max([max(crr11),max(crr12),max(crr13),max(crr14),max(crr15)]);
fprintf('\n Test signal matches signal %d',ceil(I1/3));
