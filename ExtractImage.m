% Author : Tony Yin
% ExtractImage is a function that extracts a black and white image that has
% been embedded within a colour image
% Input(s):
% uint8Array3D = A 3D array of uint8 values (i.e. an RGB colour image) that
%                contains a hidden black and white image
% Output
% uint8Array2D = A 2D array of uint8 values (i.e. a greyscale image) of the
%                black and white image that was hidden inside the colour image
%               (each pixel will have a value of 0 or 255)


function [uint8Array2D] = ExtractImage(uint8Array3D)

% Finding rows and columns of input array
rows = size(uint8Array3D,1);
cols = size(uint8Array3D,2);

% Setting output array as the same size as input array and filling it with
% zeros i.e. black pixels
uint8Array2D = uint8(zeros(rows,cols));

% Using for loops to cycle through each element in the input array
for i = 1:rows
    for j = 1:cols

% Finding the RGB values of the corresponding pixel in the input array
        rValue = double(uint8Array3D(i,j,1));
        gValue = double(uint8Array3D(i,j,2));
        bValue = double(uint8Array3D(i,j,3));
        rGBValues = rValue + gValue + bValue;
        
% Assigning corresponding pixel in the output array to a white pixel if the
% RGB values for a particular pixel sum to an odd number
        if (mod(rGBValues,2)==1)
            uint8Array2D(i,j) = 255;
            
        end
    end
end