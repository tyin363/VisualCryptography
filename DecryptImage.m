% Author : Tony Yin
% DecryptImage is a function that takes a cipher image and decrypts it
% using a key image
% Input(s):
% cipherImage = A 2D array of uint8 values (i.e. a grayscale image) containing
%               the black and white cipher image (each pixel will have a value
%               of 0 or 255)
% keyImage = A 2D array of uint8 values (i.e. a grayscale image) containing the
%            black and white cipher image (each pixel will have a value of 0 or 255)
% Output
% decryptedImage = A 2D array of uint8 values (i.e. a grayscale image) containing
%                  the decrypted image, this will be the same size as the key.


function [decryptedImage] = DecryptImage(cipherImage, keyImage)

% Finding number of rows and columns in key image
rows = size(keyImage,1);
cols = size(keyImage,2);

% Assigning decrypted image to the same size as the key image and setting
% all elements to zero (i.e. black pixels)
decryptedImage = uint8(zeros(rows,cols));

% Using a nested for loop to go through every pixel
for i = 1:rows
    for j = 1:cols
        
% Using an if loop to add a white pixel to the corresponding position in
% the decrypted image if both two corresponding pixels are black
        if (cipherImage(i,j) == 0) && (keyImage(i,j) == 0)
            decryptedImage(i,j) = 255;
            
% Adding a white pixel to the corresponding position in the decrypted
% image if both two corresponding pixels are white
        elseif (cipherImage(i,j) == 255) && (keyImage(i,j) == 255)
            decryptedImage(i,j) = 255;
            
        end
    end
end
