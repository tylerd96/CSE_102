% #1
rose = imread('milking_cow.png');
rose = rgb2gray(rose);
[I256,map256] = gray2ind(rose,256);
[I128,map128] = gray2ind(rose,128);
[I64,map64] = gray2ind(rose,64);
[I32,map32] = gray2ind(rose,32);
[I16,map16] = gray2ind(rose,16);
[I8,map8] = gray2ind(rose,8);
[I4,map4] = gray2ind(rose,4);
[I2,map2] = gray2ind(rose,2);
%first 4
% figure(1), subplot(221), subimage(I256,map256),title('256 Grayscales'),
% subplot(222),subimage(I128,map128), title('128 Grayscales'), subplot(223),
% subimage(I64,map64), title('64 Grayscales'), subplot(224),subimage(I32,map32),
% title('32 grayscales')
%second 4
% figure(2), subplot(221), subimage(I16,map16),title('16 Grayscales'),
% subplot(222), subimage(I8,map8), title('8 Grayscales'), subplot(223),
% subimage(I4,map4), title('4 Grayscales'), subplot(224), subimage(I2,map2),
% title('2 Grayscales')

% #2 this doesn't work so I will do the coordinates tonight
pio = imread('pioneers.png');
m = pio(50:180,50:180);
roi = roipoly(m);
a = fspecial('average',11);
ma = roifilt2(a,m,roi);
u = fspecial('unsharp');
mu = roifilt2(u,m,roi);
l = fspecial('log');
ml = roifilt2(l,m,roi);
figure(), subplot(221), subimage(m), title('Original'),
subplot(222), subimage(ma), title('Average Filter'),
subplot(223), subimage(mu), title('Unsharp Filter'),
subplot(224), subimage(ml), title('Log Filter')

% #3
% roseSP = imnoise(rose, 'salt & pepper',0.3);
% pioSP = imnoise(pio, 'salt & pepper',0.3);
% figure(1), subplot(211), subimage(rose), title('Original'),
% subplot(212), subimage(roseSP), title('Salt and Pepper')
% figure(2), subplot(211), subimage(pio), title('Original'),
% subplot(212), subimage(pioSP), title('Salt and Pepper')

% #4
% roseG = imnoise(rose, 'gaussian');
% pioG = imnoise(pio, 'gaussian');
% figure(1), subplot(211), subimage(pio), title('Original'),
% subplot(212), subimage(pioG), title('Gaussian')
% figure(2), subplot(211), subimage(rose), title('Original'),
% subplot(212), subimage(roseG), title('Gaussian')

% #5
% mil80 = rgb2gray(imread('milking_80.png'));
% mil20 = rgb2gray(imread('milking_20.png'));
% ball = imread('balloons_noisy.png');
% glass = imread('glassware_noisy.png');
% pio20 = rgb2gray(imread('pioneers_20.png'));
% pio80 = rgb2gray(imread('pioneers_80.png'));
% mil20 = medfilt2(mil20,[3 3]);
% pio20 = medfilt2(pio20, [3 3]);
% a = fspecial('average',5);
% pio80 = medfilt2(pio80,[5 5]);
% mil80 = medfilt2(mil80, [5 5]);
% glass = imfilter(glass,a);
% ball  = imfilter(ball,a);
% imshow(ball), title('Balloons')

