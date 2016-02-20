%% Lab2 - Engraving SDU Logo
% In this lab you learn how to paste an image into another larger image
% nicely.
%% Attempt 1
% Here we forcefully paste logo and lose all information about the
% backgound of the picture.

L = imread('sdulogo122white.jpg');
I = imread('sdubuilding.jpg');
[h,w,~] = size(L);
I(21:20+h,81:80+w,:)=L;
imshow(I);
%% Attempt 2
% Let's add the logo image with the original image. As you will see there
% is an advantage of having black background for a logo image as it adds
% nicely without screwing the original picture (*why?*). But the logo's
% color has changed. That's sad.
clear all
L1 = imread('sdulogo122white.jpg');
L2 = imread('sdulogo122black.jpg');
I = imread('sdubuilding.jpg');
[h1,w1,~] = size(L1);
[h2,w2,~] = size(L2);
I(21:20+h1,81:80+w1,:)=I(21:20+h1,81:80+w1,:)+L1;
I(21:20+h2,281:280+w2,:)=I(21:20+h2,281:280+w2,:)+L2;
imshow(I);
%% Attempt 3
% We can add weightage to the logo and the original picture (kind of an
% opacity). The result is nice but still there is space for improvement.
clear all
L1 = imread('sdulogo122white.jpg');
L2 = imread('sdulogo122black.jpg');
I = imread('sdubuilding.jpg');
[h1,w1,~] = size(L1);
[h2,w2,~] = size(L2);
I(21:20+h1,81:80+w1,:)=I(21:20+h1,81:80+w1,:)+0.1*L1;
I(21:20+h2,281:280+w2,:)=I(21:20+h2,281:280+w2,:)+0.1*L2;
imshow(I);
%% Attempt 4
% Let's loop and explicitly select which pixels we want and which pixels we
% don't want in the resultant image.
%
% * For the "white" logo we assume that pixels with any of the red, green or
% blue components greater than 245 are "white" and we remove them
% * For the "black" logo we assume that pixels with any of the red, green or
% blue components less than 15 are "black" and we remove them
%

clear all
A = imread('sdubuilding.jpg');
B = imread('sdulogo122white.jpg');
C = imread('sdulogo122black.jpg');
[a,b,~] = size(B);
for i=1:a
    for j=1:b
        if B(i,j,1)<245 || B(i,j,2)<245 || B(i,j,3)<245
            A(20+i,80+j,:)=B(i,j,:);
        end
    end
end

[c,d,~] = size(C);
for i=1:c
    for j=1:d
        if C(i,j,1)>15 || C(i,j,2)>15 || C(i,j,3)>15
            A(20+i,280+j,:)=C(i,j,:);
        end
    end
end
imshow(A);
%% Assignment
% Try to add "white" and "black" logos of SDU to *boldt.jpg* file, one in the
% skies and one in the sea. Try to not use for loops. Read
% <http://www.mathworks.com/help/matlab/math/matrix-indexing.html#bq7egb6-1 Using Logicals in Array Indexing>
% for insight.
%
% <<../boldt.jpg>>
%
% Lab2stub is simple:
%
% <include> Lab2stub.m </include>
%