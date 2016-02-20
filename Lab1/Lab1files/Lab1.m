%% Lab1 - Calculating and Plotting Image Histogram
% This lab aims at learning how to scan *_graylevel_* and *_RGB_* images to
% calculate and plot a useful image statistic called _*histogram*_ .
% The histogram of a graylevel image is a vector that stores for each
% color the number of pixels of that particular color. The size of the
% vector is equal to the number of gray colors (256 for uint8).
%
% This lab consists of an *assignment* and *tutorial steps* that help to
% get started with the assignment.
%% Step 1: IPT function imhist
% Image Processing Toolbox in Matlab has a function for calculating image
% histogram. The following code shows it in action.
I = imread('graypeppers.png');
imshow(I);
%%
h = imhist(I); % calculate image histogram
size(h) % show size of h vector
%%
h(100) % number of pixels with color equal to 100
%% Step 2: Plotting histogram
% You can plot image historgram as well using *plot*, *bar* or *stem*
% functions
plot(h,'magenta');
%%
bar(h,'blue');
%%
stem(h);
%%
stem(h,'Marker','none');
%%
% *imhist* can also be used directly to visualize image histogram
imhist(I);
%% Step 3: Our function xist
% Because we are cool dudes (or peppers) we write our own histogram
% calculating function *xist*:
%
% <include>xist.m</include>
%
%%
% and here is *xist* function in action:
x = xist(I);
stem(h,'Marker','none');
%% Assignment
% As you might have noticed the IPT's *imhist* function has a small bug.
% So write your own function *imxist* that calculates image histogram
% (perhaps using *xist* function) and plots it with the image itself. In
% case the image is colorful, i.e. containing red, green and blue
% components, make your function plot histograms of each components
% independently as if they were really independent (in fact they are not).
%% 
G = imread('graypeppers.png');
RGB = imread('peppers.png');
imxist(G);
%%
imxist(RGB);
%%
% *Follow the below steps to submit your assignment*
% 
% # Write *imxist* function and check if it works correctly
% # Populate the stub that is shown below (you can find it in *Lab1stub.m*)
% with correct data and code
% # Publish the stub as _html_
% # Open the published html file in Chromium (or Google-chrome) browser and
% print it as _pdf_ (in print dialogue uncheck *_Header and Footers_*
% option and check _*Background graphics*_ option for nicer output)
% # Submit the resultant pdf and wait for me to grade it
%
% The stub that you should use to make my life easier...
%
% <include>Lab1stub.m</include>
%
% *GOOD LUCK!!!* 