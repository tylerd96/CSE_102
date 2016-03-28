c=imread('Cameraman.bmp');
%[x,map]=gray2ind(c);
h = ones(5,5)/25;
x = imfilter(c,h);
figure, imshow(x)
y = imsharpen(x);
y = imsharpen(y);
y = imsharpen(y);
figure, imshow(y);

%y = rgb2gray(w);
%for i =1:size(w,1)
%    for j=1:size(w,2)h
%        w(i,j,1) = w(i,j,1)*2;
%    end
%end



%     w(i,j,2) = 255 -w(i,j,2);
%     w(i,j,1) = 255-w(i,j,1);
%     w(i,j,3) = 255-w(i,j,3);
%figure, imshow(c), impixelinfo
 