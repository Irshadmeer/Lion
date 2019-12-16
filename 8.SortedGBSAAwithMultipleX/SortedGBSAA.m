function serialGBSAA = SortedGBSAA(len)
serialGBSAA = zeros(8300,1);
w= 1+ (int16(len/5));
y= w -1;
for n= 1 : len
    serialGBSAA(n+w) = serialGBSAA(n+y) + 0.000120;
    
end
end

