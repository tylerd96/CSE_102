% Name: Tyler Davis

% #1
chicken = rgb2gray(imread('chickens.bmp'))/4;
imshow(chicken); title('Original Image'); figure, imhist(chicken),axis tight;
chicken1 = histeq(chicken);
chicken2 = histeq(chicken1);
figure, imshow(chicken1);imhist(chicken1); title('Histogram #1'); impixelinfo
figure, imshow(chicken2);imhist(chicken2); title('Histogram #2'); impixelinfo

% #2 answer in word file
chick = chicken - chicken;
figure, imshow(chick)

% #3
breast = imread('breast.tif');
figure, imshow(breast);title('Original Image'); impixelinfo
breastInv = imcomplement(breast);
breastGamma = imadjust(breast,[],[],.5);
figure, imshow(breastGamma); title('Gamma Modified'); impixelinfo
figure, imshow(breastInv);title('Compliment image'); impixelinfo

% #4
mona = rgb2gray(imread('monalisa.png'));
figure, imshow(mona);title('Original Image'); impixelinfo
SandP = imread('saltandpepper.tif');
figure, imshow(SandP);title('Original Image'); impixelinfo
SandPmed = medfilt2(SandP,[3,3]);
figure, imshow(SandPmed);title('Filtered Image'); impixelinfo
mona1 = medfilt2(mona, [7 7]);
f = fspecial('average');
mona1 = imfilter(mona1,f);
figure, imshow(mona1);title('Filtered Image'); impixelinfo

% #5
img = imread('fouriertransform.tif');
figure, imshow(img);title('Original Image'); impixelinfo
img1 = im2double(img);
%J = 1*log(1 + img1);
%J2 = 2*log(1+img1);
J10 = 10*log(1+img1);
figure, imshow(J10);title('Modified Image'); impixelinfo