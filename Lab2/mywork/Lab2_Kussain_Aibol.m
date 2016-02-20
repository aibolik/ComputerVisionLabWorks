%% Lab2 Assignment
% Student: *Aibol Kussain @ EN3-A-03* 
%% Step 1
% Read the image where we want to put our logos, and get its sizes. Then
% get the logos.
I = imread('boldt.jpg');
[w, h, z] = size(I);
logo1 = imread('sdulogo122black.jpg');
logo2 = imread('sdulogo122white.jpg');
[w1, h1, z1] = size(logo1);
[w2, h2, z2] = size(logo2);

%% Step 2
% Put white logo to the image
a = I(1:w2,1:h2,:);
logical = logo2<245;
a(logical) = logo2(logical);
I(1:w2,1:h2,:)= a;
imshow(I);

%% Step 3
% Put white logo to the image
b = I(w-w2:w-1,1:h2,:);
logical2 = logo1 > 15;
b(logical2) = logo2(logical2);
I(w-w2:w-1,1:h2,:)= b;
imshow(I);