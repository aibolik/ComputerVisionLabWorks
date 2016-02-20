%% Lab4 Assassignment :)
% Student: *Aibol Kussain @ EN3-A-03* 
%%%
% This lab we will study finding difference in two similar pictures.

%% Step 1
% First, download two similar images and load them to MATLAB.
i1 = imread('1.jpg');
i2 = imread('2.jpg');

subplot(1,2,1), imshow(i1);
subplot(1,2,2), imshow(i2);

%% Step 2
% Finding difference by substracting images. Then, we should make it
% black and white to easily distinguish different areas. Now, we can see
% differences in black/white picture
D = imabsdiff(i1,i2);
BW = im2bw(D, .1);
imshow(BW);

%% Step 3
% Here we find differences those are big enough(not to small, to not point
% spots). Then plot them in original picture
subplot(1,2,1), imshow(i1);
subplot(1,2,2), imshow(i2);
diffs = regionprops(BW, 'BoundingBox');
len = size(diffs);
for i = 1:len
    if diffs(i).BoundingBox(3) * diffs(i).BoundingBox(4) > 10
        subplot(1, 2, 1), rectangle('Position', diffs(i).BoundingBox, 'EdgeColor', 'blue', 'LineWidth', 2);
        subplot(1, 2, 2), rectangle('Position', diffs(i).BoundingBox, 'EdgeColor', 'blue', 'LineWidth', 2);
    end
end

