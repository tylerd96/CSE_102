w = imread('caribou2.jpg');
for i=1:312
    for j=1:467
        w(i,j) = 255-w(i,j);
    end
end
