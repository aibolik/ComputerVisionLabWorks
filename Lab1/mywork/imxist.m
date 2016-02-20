function imxist(I)
    if ndims(I) == 2
		[n, m] = size(I);
		h = zeros(1, 256);
		for i = 1:n
			for j = 1:m
				h(I(i, j) + 1) = h(I(i, j) + 1) + 1;
			end
		end
		subplot(1, 2, 1);
		imshow(I);
		subplot(1, 2, 2);
		bar(h);
	else
		h = zeros(256, 3);
		for k = 1:3
			[n, m] = size(I(:,:,k));
			for i = 1:n
				for j = 1:m
					h(I(i, j, k) + 1, k) = h(I(i, j, k) + 1, k) + 1;
				end
			end
		end
		subplot(3, 3, [1,2,3]);
		imshow(I);
		subplot(3, 3, 4);
		bar(h(:, 1), 'r');
		subplot(3, 3, 5);
		plot(h(:, 2), 'g');
		subplot(3, 3, 6);
		stairs(h(:, 3), 'b');
    end
end
