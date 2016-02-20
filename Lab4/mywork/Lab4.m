%% Lab4 - Moving Object Tracking
% In this lab you will learn how to separate foreground object from
% background scene to track the object by subtracting two video frames.
%% Step 1: Reading Video
% Let's read movie and show the 1st and 75th frame.
f = VideoReader('bike.avi');
mov = read(f);
I = mov(:,:,:,1);
imshow(I);
%%
J = mov(:,:,:,75);
imshow(J);
%% Step 2: Finding Difference
% Let's find the three possible differences and convert them to binary
% image in which foreground will be white and background black.

% I - J
close all
D1 = I-J;
B1 = im2bw(D1,.1);
figure, imshow(D1);
figure, imshow(B1);
%%

% J - I
close all
D2 = J-I;
B2 = im2bw(D2,.1);
figure, imshow(D2);
figure, imshow(B2);
%%

% |I - J|
close all
D3 = imabsdiff(I,J);
B3 = im2bw(D3,.1);
figure, imshow(D3);
figure, imshow(B3);
%% Step 3: Finding Interesting Properties of Blobs
% Blobs are the foreground objects which are white in color in binary
% images. We can extract various properties of those objects using library
% function *regionprops* (type *doc regionsprops* for more information)
%%
% We will use the absolute difference ( *why?* ) to exctract BoundingBox
% property for each blob.
P = regionprops(B3,'BoundingBox');
len = size(P)
P(1).BoundingBox
P(2).BoundingBox
P(5:7).BoundingBox
P(len).BoundingBox
%% Step 4: Drawing Bounding Boxes
% Let's draw a rectangle (i.e. BoundingBox) around each blob in a figure.
% Note that all pixel of a blob are connected.
imshow(B3);
for i=1:len
    rectangle('Position',P(i).BoundingBox, 'EdgeColor','green','LineWidth',1);
end
%% Step 5: Visualizing Many Figures
% Here we learn how to snap figure in loop to publish nicely. We snap the
% figure each time we draw a new BoundingBox. We draw BoundingBox only if
% the product of height and width is greater than 30 to filter out small
% blobs.
close all
imshow(J);
for i=1:len
    if P(i).BoundingBox(3)*P(i).BoundingBox(4)>30
        rectangle('Position',P(i).BoundingBox, 'EdgeColor','green','LineWidth',1);
        snapnow;
    end
end
%% Assignment
% Find two similar images and draw a BoundingBox around the objects that
% are present in one image and absent in another. 
%%%
% Similar to these images:
%
% <<../1.jpg>>
%
% <<../2.jpg>>
%
%%%
% Lab4stub.m
%
% <include> Lab4stub.m </include>
%