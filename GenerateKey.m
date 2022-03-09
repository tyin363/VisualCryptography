% Author : Tony Yin
% GenerateKey is a function assembles a 2D cell array to act as a key,
% where each array element is a 2x2 uint8 pattern selected at random.
% The patterns are passed in using a 1D cell array and then randomly
% assigned to the 2D cell array based on values in a 2D array of random values
% (that range from 1 to 6 inclusive)
% Input(s):
% mnArray = A 2D m x n array of random integer values between 1 and 6 inclusive
% cellArray = A 1x6 1D cell array containing 6 patterns
%            (where each pattern is stored as a 2x2 uint8 array)
% Output
% mnCellArray = A 2D m x n cell array containing patterns to act as a key.
%               Each element of the array will be a pattern stored as a 2x2 array
%               of uint8 values (i.e. a grayscale image), with the pattern selected
%               from the list of patterns based on the corresponding random values
%               contained in the 2D array of random integer values.


function [mnCellArray] = GenerateKey(mnArray, cellArray)

% Using for loop to loop through all the rows and columns in the mnArray
for i = 1:size(mnArray,1)
    for j = 1:size(mnArray,2)
        
% Setting each element in the output array to be the pattern in the cellArray
% associated with the corresponding random values in the mnArray
        mnCellArray{i,j} = cellArray{mnArray(i,j)};
        
    end
end
end