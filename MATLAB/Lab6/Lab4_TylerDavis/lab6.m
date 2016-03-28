% #1
HD = imread('homographic_dark.jpg');
HD = rgb2gray(HD);
HD = im2double(HD);
HD1 = homfilt(HD,128,2,.5,2);
%figure, imshow(HD1/16)


% #2
bird = rgb2gray(imread('flying birds.jpg'));
clip = rgb2gray(imread('paper clips.jpg'));
clipB = im2bw(clip, graythresh(clip));
birdB = im2bw(bird,.4);
%figure(1), subplot(211), subimage(clipB), title('PaperClips'),
%subplot(212), subimage(birdB), title('Flying Birds')

% #3
rice = imread('rice.jpg');
cam = imread('cameraman.png');
rice = rgb2gray(rice);
K = imlincomb(.5, cam, .5, rice);
%figure, imshow(K)

% #4
man = imread('cameraman.png');
manC = edge(man,'Canny');
manP = edge(man, 'Prewitt');
manR = edge(man, 'Roberts');
manS = edge(man, 'Sobel');
manZC = edge(man, 'zerocross');
l = fspecial('laplacian');
manL = imfilter(man,l);
manMH = imfilter(man, fspecial('Gaussian'));
manMH = imfilter(manMH, fspecial('Laplacian'));
manMH = edge(manMH, 'zerocross');
%figure, subplot(221), subimage(manR), title('Roberts'),
%subplot(222), subimage(manP), title('Prewitt'),
%subplot(223), subimage(manS), title('Sobel'),
%subplot(224), subimage(manL), title('Lablacian')

%figure, subplot(221), subimage(manZC), title('Zero Crossing'),
%subplot(222), subimage(manMH), title('Marr-Hildreth'),
%subplot(223), subimage(manC), title('Canny'),



% #5
p = imread('pearsonhall.jpg');
p = rgb2gray(p);
p1 = imnoise(p, 'salt & pepper');
p2 = imnoise(p, 'gaussian');
p1C = edge(p1,'Canny');
p1P = edge(p1, 'Prewitt');
p1R = edge(p1, 'Roberts');
p1S = edge(p1, 'Sobel');
p1ZC = edge(p1, 'zerocross');
l = fspecial('laplacian');
p1L = imfilter(p1,l);
p1MH = imfilter(p1, fspecial('Gaussian'));
p1MH = imfilter(p1MH, fspecial('Laplacian'));
p1MH = edge(p1MH, 'zerocross');

% figure, subplot(221), subimage(p1R), title('Roberts Salt & Pepper'),
% subplot(222), subimage(p1P), title('Prewitt Salt & Pepper'),
% subplot(223), subimage(p1S), title('Sobel Salt & Pepper'),
% subplot(224), subimage(p1L), title('Lablacian Salt & Pepper')

% figure, subplot(221), subimage(p1ZC), title('Zero Crossing Salt & Pepper'),
% subplot(222), subimage(p1MH), title('Marr-Hildreth Salt & Pepper'),
% subplot(223), subimage(p1C), title('Canny Salt & Pepper'),

p2C = edge(p2,'Canny');
p2P = edge(p2, 'Prewitt');
p2R = edge(p2, 'Roberts');
p2S = edge(p2, 'Sobel');
p2ZC = edge(p2, 'zerocross');
l = fspecial('laplacian');
p2L = imfilter(p2,l);
p2MH = imfilter(p2, fspecial('Gaussian'));
p2MH = imfilter(p2MH, fspecial('Laplacian'));
p2MH = edge(p2MH, 'zerocross');

figure, subplot(221), subimage(p2R), title('Roberts Gaussian'),
subplot(222), subimage(p2P), title('Prewitt Gaussian'),
subplot(223), subimage(p2S), title('Sobel Gaussian'),
subplot(224), subimage(p2L), title('Lablacian Gaussian')

figure, subplot(221), subimage(p2ZC), title('Zero Crossing Gaussian'),
subplot(222), subimage(p2MH), title('Marr-Hildreth Gaussian'),
subplot(223), subimage(p2C), title('Canny Gaussian'),
