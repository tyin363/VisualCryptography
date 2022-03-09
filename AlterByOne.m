% Author : Tony Yin
% AlterByOne is a function that takes an uint8 value in the range 0 to 255
% inclusive and adds 1 to it (unless the value is 255 in which case it subtracts 1)
% Input(s):
% intValue = An uint8 value somewhere between 0 and 255 inclusive
% Output
% uint8Value = A uint8 value that is one more that the input uint8 value
%              (unless the original value was 255, in which cases it is one
%              less)

function [uint8Value] = AlterByOne(intValue)

% Using if loop to add 1 to the input uint8 value if it is greater than equal to 0
% and less than 255
if (intValue>=0) && (intValue<255)
    uint8Value = intValue + 1;
    
% Subtracting 1 to input uint8 value if integer is 255
else
    uint8Value = intValue - 1;
end