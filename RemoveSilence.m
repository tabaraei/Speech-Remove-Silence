clc;
clear;
close all;

[Signal, fs] = audioread('C:\Users\ALI\Desktop\input.wav');
frameSize = floor(fs*(30*0.001)); % 30 miliseconds per frame
frames = buffer(Signal, frameSize); % without overlap
treshold = 0.02;
result = [];

for i=1:size(frames,2)
    if sum(frames(:,i).^2) > treshold
        result = [result; frames(:,i)];
    end
end

figure()
% plot input signal
subplot(2,1,1)
plot(Signal, 'color', [1 0.7 0]) 
title('Input Signal')
% plot output signal
subplot(2,1,2)
plot(result, 'color', [1 0.7 0])
title('After removing silence')

audiowrite('C:\Users\ALI\Desktop\output.wav', result, fs);