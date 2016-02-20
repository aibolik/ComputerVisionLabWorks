function h = xist(I)
% XIST Calculate histogram of graylevel uint8 image I

    h = zeros(1,256); % creating array of 256 zeros
    [height,width]=size(I); % getting dimensions of I
    % counting colors
    for i=1:height
        for j=1:width
           color = I(i,j);
           h(color+1) = h(color+1) + 1;
        end
    end
    
end