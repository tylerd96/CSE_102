%1
w = imread('caribou.jpg');
a1 = bitget(w,1);
a8 = bitget(w,8);
posx = [0 1 2 0 1 2 0 1]/3;
posy = [2 2 2 1 1 1 0 0]/3;
for i=1:8
    %subplot('Position',[posx(i),posy(i),.3,.3]), 
    %imshow(logical(bitget(w,i))), axis image;
end
c = a1+a8;
%figure, imshow(logical(c))

col = imread('college.jpg');
col1 = rgb2gray(col);
d = bitget(col1,7) + bitget(col1,6);
%figure, imshow(logical(d));

u = imread('baby.bmp');
%figure, imshow(u)
u = imresize(u,1/8);
%figure, imshow(u)
u = imresize(u,8,'nearest');
%figure, imshow(u);
z = imresize(imresize(u, 1/8), 8, 'nearest');
%figure, imshow(z)

%3
x = imread('monalisa R.bmp');
%figure, imshow(x)
%x = rgb2gray(x);
X = uint8(zeros(size(x)));
%figure, imshow(X)
R = flipud(x(:,:,1));
G = flipud(x(:,:,2));
B = flipud(x(:,:,3));
X(:,:,1)= R;
X(:,:,2)= G;
X(:,:,3)= B;
%figure, imshow(X);
xFlip = fliplr(x);
%figure, imshow(xFlip)

% #4
moon = imread('blurrymoon.tif');
l = fspecial('laplacian');
moonL = imfilter(moon,l);
figure, subplot(121), subimage(moon), title('Original')
subplot(122), subimage(moonL), title('Filtered')

% #5
hub = imread('hubble.tif');
a = fspecial('average',15);
hubA = imfilter(hub,a);
figure, subplot(121), subimage(hub), title('Original')
subplot(122), subimage(hubA), title('Filtered')