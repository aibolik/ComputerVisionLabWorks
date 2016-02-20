%% Lab3 Assignment
% Student: *Aibol Kussain @ EN3-A-03* 
%%
% In this Lab Work we will be guessing what children Cristiano Ronaldo and
% Irina Shayk would have if the did not divorce.

%% Step 1
% Get the images of C. Ronaldo and Irina Shayk
C = imread('ronaldo_face.jpg');
I = imread('irina_face.jpg');
subplot(1,2,1), imshow(C);
subplot(1,2,2), imshow(I);

%% Step 2
% Here are 6 variant of C.Ronaldo + I. Shayk
v1 = .15*C + .85*I;
v2 = .3*C + .7*I;
v3 = .45*C + .55*I;
v4 = .6*C + .4*I;
v5 = .75*C + .25*I;
v6 = .9*C + .1*I;

subplot(2,3,1), imshow(v1);
subplot(2,3,2), imshow(v2);
subplot(2,3,3), imshow(v3);
subplot(2,3,4), imshow(v4);
subplot(2,3,5), imshow(v5);
subplot(2,3,6), imshow(v6);