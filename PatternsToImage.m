% Author : Tony Yin
% PatternsToImage is a function Takes a cell array of 2x2 uint8 patterns
% (e.g. the patterns for our image) and converts it to a grayscale image (a 2D uint8 array) so that it can be displayed and saved
% Input(s):
% mnCellArray = A 2D m x n cell array of 2x2 patterns. Each element of the array will be a
%              pattern stored as a 2x2 array of uint8 values (i.e. a grayscale image)
% Output
% m2n2Array = A 2D array of uint8 values (i.e. a greyscale image) with the pixels
%             assembled into a single image. This array will have twice the number of rows
%             and twice the number of columns as the input array
%            (i.e. it will be a 2m x 2n array)


function [m2n2Array] = PatternsToImage(mnCellArray)

% Creating the 2D array of uint8 values
m2n2Array = cell2mat(mnCellArray);

end

