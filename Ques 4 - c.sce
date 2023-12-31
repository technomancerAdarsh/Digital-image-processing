x = imread("rose.jpeg");
y = imread("sunflower.jpeg");
xc = imcomplement(x);
[row,col]=size(x);
y = imresize(y,[row,col]);
a = xc & x;
b = y & x;
figure;
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imshow(y);
subplot(2,2,3);
imshow(xc);
subplot(2,2,4);
imshow(a);
figure;
imshow(b);
