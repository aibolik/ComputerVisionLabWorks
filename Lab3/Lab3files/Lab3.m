%% Lab3 - Obama2Putin Morphing
% In this lab you will learn how to morph two images to get something
% average.
%% Step 1: Adding Images
% Let's add two images to the results.
I = imread('putin.jpg');
J = imread('obama.jpg');
R = I + J;
subplot(1,3,1), imshow(I)
subplot(1,3,2), imshow(J)
subplot(1,3,3), imshow(R)
%% Step 2: Averaging Images
% As it was seen in the step 1 the image got oversaturated. To avoid it we
% have to ensure that the sum of two pixels does not get greater that 255.
% For that we take weighted average of the two images.
R1 = 0.7*I + 0.3*J; % note that .7+.3 = 1 
R2 = 0.5*I + 0.5*J; % note that .5+.5 = 1
R3 = 0.3*I + 0.7*J; % note that .3+.7 = 1
subplot(1,3,1), imshow(R1)
subplot(1,3,2), imshow(R2)
subplot(1,3,3), imshow(R3)
%% Step 3: Making Video
% Let's change the weights and save the images to make up a video.
f = VideoWriter('obama2putin.avi');
open(f);
h = linspace(1,0,100); 
for i=h
    M = I*i + (1-i)*J; 
    writeVideo(f,M);
end
close(f);
%% Assignment
% Find any two images of a man and a woman and give an insight of how could
% their children look like.
%
% <include> Lab3stub.m </include>
%