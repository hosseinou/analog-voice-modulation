clear all
clc
% recObj = audiorecorder
% disp('Start speaking.')
% recordblocking(recObj, 10);
% disp('End of Recording.');
% play(recObj);
% y = getaudiodata(recObj);
% plot(y)


% load handel.mat
% 
% filename = 'handel.wav';
% audiowrite(filename,y,Fs);
% clear y Fs
% [y,Fs] = audioread('handel.wav');
% sound(y,Fs);



% y = rand(10000,1) ;   % some random signal 
% Fs = 1100 ;   % som frequency 
% save demo.mat ;  % save the data into .mat file 
% clear y Fs  % remove the variables
% load demo.mat ;
% filename = 'handel.wav';
% audiowrite(filename,y,Fs);
% [y,Fs] = audioread('handel.wav');
% sound(y,Fs);

[y,Fs]=audioread('Recording.m4a');


filename = 'Recording.wav';
audiowrite(filename,y,Fs);
player = audioplayer(y,Fs);
%play(player);
Y=fft(y);
 figure(1);
%  plot(y)
%  hold on
%  figure(2);
%  plot(Y)
%  hold on





%AM mod:
yAM = ammod(y,20000,Fs);
YAM = fft(yAM);
% figure(1);
% plot(yAM)
% figure(2);
% plot(YAM)

%AM demod:
xAM = amdemod(yAM,20000,Fs);
XAM = fft(xAM);
playerAM = audioplayer(xAM,Fs);
% play(playerAM);
% figure(1);
% plot(xAM)
% figure(2);
% plot(XAM)
audiowrite('AM.wav',xAM,Fs);




%FM mod:
yFM = fmmod(y,20000,Fs,2000);
YFM = fft(yFM);
% figure(1);
% plot(yFM)
% figure(2);
% plot(YFM)

%FM demod:
xFM = fmdemod(yFM,20000,Fs,2000);
XFM = fft(xFM);
playerFM = audioplayer(xFM,Fs);
%play(playerFM);
figure(1);
plot(xFM)
figure(2);
plot(XFM)
audiowrite('FM.wav',xFM,Fs);
