% Author : Tony Yin
% CreatePatterns is a function that creates a 1D cell array containing six
% special 2x2 patterns of uint8 values which will be used for key generation
% Input(s):
% None
% Output
% complementArray = A single 1 x 6 cell array of patterns.
%                   It will contain the following six 2x2 patterns (in this order):
%                   bottom 2 black, top 2 black, left 2 black, right 2 black,
%                   leading diagonal black, off diagonal black. Each pattern will
%                   be stored as a 2x2 uint8 value array (i.e. a greyscale image)

function [cellArray] = CreatePatterns()

% Creating first pattern in cell array
cellArray{1} = uint8([255 255; 0 0]);

% Creating second pattern in cell array
cellArray{2} = uint8([0 0; 255 255]);

% Creating third pattern in cell array
cellArray{3} = uint8([0 255; 0 255]);

% Creating fourth pattern in cell array
cellArray{4} = uint8([255 0; 255 0]);

% Creating fifth pattern in cell array
cellArray{5} = uint8([0 255; 255 0]);

% Creating sixth pattern in cell array
cellArray{6} = uint8([255 0; 0 255]);

end