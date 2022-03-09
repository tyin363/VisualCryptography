% Author : Tony Yin
% EmbedImage is a function used to embed a binary (i.e. black and white)
% image (stored as a grayscale image) inside another colour image
% (i.e. a 3D array of uint8 values representing an RGB image)
% Input(s):
% uint8Array2D = A 2D array of uint8 values (i.e. a greyscale image) of the
%                black and white image to embed inside the colour image.
%                Pixel values will either be 0 or 255.
% uint8Array3D = A 3D array of uint8 values (i.e. an RGB colour image)
%                that the black and white image will be embedded into
% Output
% hiddenArray = A 3D array of uint8 values (i.e. an RGB colour image)
%               that contains a hidden black and white image


function [hiddenArray] = EmbedImage(uint8Array2D, uint8Array3D)

% Setting the output 3D array as the input 3D array
hiddenArray = uint8Array3D;

% Using a nested for loop to cycle through every pixel in the input 2D array
for i = 1:size(uint8Array2D,1)
    for j = 1:size(uint8Array2D,2)
        
% Setting the current pixel in the 2D array as the variable binaryPixel
        binaryPixel = uint8Array2D(i,j);
        
% Finding each RGB value and converting it into a double
        rValue = double(uint8Array3D(i,j,1));
        gValue = double(uint8Array3D(i,j,2));
        bValue = double(uint8Array3D(i,j,3));
        
% Calculating sum of RGB values
        rGBValues = rValue + gValue + bValue;
        
% Altering red value by 1 to the corresponding pixel in the binary image if the
% pixel is black and the RGB values do not already sum to an even number
        if (binaryPixel == 0) && (mod(rGBValues,2)==1)
            hiddenArray(i,j,1) = AlterByOne(uint8Array3D(i,j,1));
            
% Altering red value by 1 to the corresponding pixel in the binary image if the
% pixel is white and the RGB values do not already sum to an odd number
        elseif (binaryPixel == 255) && (mod(rGBValues,2)==0)
            hiddenArray(i,j,1) = AlterByOne(uint8Array3D(i,j,1));
        end
    end
end


end