% do not do 2 and 10
% Name: Tyler Davis
% #1 size answers are in word document
college = imread('college.jpg');
collegeGray = rgb2gray(college);
collegeBi = im2bw(college,graythresh(college));
%imshow(collegeGray)
%imsave
%imshow(collegeBi)
%imsave
whos c college
whos c collegeGray
whos c collegeBi
%figure, imshow('college2.bmp')
%figure, imshow('college3.bmp')

% #2
i = imread('rose.tif');
j = imrotate(i,180,'bilinear');
%figure, imshow(j)

% #3
h = rgb2gray(imread('plane_noise1.png'));
%figure, imshow(h)
hAvg = imfilter(h,fspecial('average',8));
hMed = medfilt2(h,[7 7]);
%figure, imshow(hAvg)
%figure, imshow(hMed)

% #4
k = imread('blurliscenseplate.bmp');
a = im2double(imread('monalisa L.bmp'));
A = imresize(a,[598,399]);
a = fliplr(A);
b = im2double(imread('monalisa R.bmp'));
f = imadd(a, b);
%figure, imshow(f)

% #5
m = imread('blurrymoon.tif');
%figure, imshow(m)
m = imfilter(m,fspecial('laplacian'),'symmetric');
%figure, imshow(m)

% #6
plate = imread('blurliscenseplate.bmp');
rose = imread('rose.tif');
%figure,imshow(rose)
LEN = 31;
THETA = 11;
PSF = fspecial('motion',LEN,THETA);
roseBlur = imfilter(rose,PSF,'circular','conv');
%figure, imshow(roseBlur)
roseClr = deconvwnr(roseBlur,PSF,0);
plateClr = deconvwnr(plate,PSF);
%figure, imshow(plateClr)
%figure, imshow(roseClr)

% #7
blu = imread('blurred.bmp');
figure, imshow(blu)
PSF = fspecial('motion',31,11);
blu = rgb2gray(blu);
noise_var = 0.001;
estimated_nsr = noise_var / var(im2double(blu(:)));
unBlu = deconvwnr(blu, PSF,estimated_nsr);
figure, imshow(unBlu)

