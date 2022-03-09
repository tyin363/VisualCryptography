% Author : Tony Yin
% ImageComplement is a function that converts an image back into a cell array 
% of 2x2 uint8 patterns so that we can more easily work with the patterns
% Input(s):
% uint8Array = A 2D array of uint8 values (i.e. a grayscale image) containing 
%              an image made up of lots of black and white pixels
% Output
% cellArray = A 2D cell array of 2x2 patterns extracted from the image. 
%                   Each element of the array will be a pattern stored as a 
%                   2x2 array of uint8 values (i.e. a grayscale image)


function [cellArray] = ImageToPatterns(uint8Array)

% Creating row array
rowArray = 2 + zeros(1,(size(uint8Array,1)/2));

% Creating column array
colArray = 2 + zeros(1,(size(uint8Array,2)/2));

% Converting image into cell array of 2x2 uint8 patterns
cellArray = mat2cell(uint8Array, rowArray, colArray);

end
