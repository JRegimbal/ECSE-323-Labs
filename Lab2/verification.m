function correct = verification( Rn, Rn1, Rn2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
temp = Rn - 6 * Rn1 + 9 * Rn2;
m = mod(temp, 2^31);
if(m == 0)
    correct = TRUE;
else
    correct = FALSE;
end

end

