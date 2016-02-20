%% Lab1 Assignment
% Student: *Aibol Kussain @ EN3-A-03* 
%%
% My work done for Lab1 - drawing histogram
%% Task description
% As was written in task, our task is to create our own histogram function,
% that will make histogram whether it is 2-dimension image(grayscale) or
% 3-dimension image(RGB). But first let's make for Grayscale.
%% Grayscale histogram
I = imread('graypeppers.png');
imxist(I);
%% RGB histogram
% Here we use matrix with 3 columns, each column for each hue(red, green,
% blue)
I = imread('peppers.png');
imxist(I);

%% imxist code
%   function imxist(I)
%       if ndims(I) == 2
% 	 	  [n, m] = size(I);
% 		  h = zeros(1, 256);
% 		  for i = 1:n
% 			  for j = 1:m
% 				  h(I(i, j) + 1) = h(I(i, j) + 1) + 1;
% 			  end
% 		  end
% 		  subplot(1, 2, 1);
% 		  imshow(I);
% 		  subplot(1, 2, 2);
% 		  bar(h);
% 	  else
% 		  h = zeros(256, 3);
% 		  for k = 1:3
% 			  [n, m] = size(I(:,:,k));
% 			  for i = 1:n
% 				  for j = 1:m
% 					  h(I(i, j, k) + 1, k) = h(I(i, j, k) + 1, k) + 1;
% 				  end
% 			  end
% 		  end
% 		  subplot(3, 3, [1,2,3]);
% 		  imshow(I);
% 		  subplot(3, 3, 4);
% 		  bar(h(:, 1), 'r');
% 		  subplot(3, 3, 5);
% 		  plot(h(:, 2), 'g');
% 		  subplot(3, 3, 6);
% 		  stairs(h(:, 3), 'b');
%       end
%   end