a1=imread('img1.jpg');
a1=imresize(a1,[700,700])
b1=rgb2gray(a1);
imshow(b1);
a2=imread('img2.jpg');
a2=imresize(a2,[700,700])
b2=rgb2gray(a2);
figure;
imshow(b2);
c=(double(a1) - double(a2)) == 0;
figure;
imshow(c);
