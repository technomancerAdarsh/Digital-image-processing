X = imread("sunflower.jpeg");
I = rgb2gray(X);
figure;
subplot(2,2,1);
imshow(I);
H = imhist(I);
subplot(2,2,2);
plot2d3(0:255,H);
He = imhistequal(I);
He2 = imhist(He);
subplot(2,2,3);
imshow(He);
subplot(2,2,4);
plot2d3(0:255,He2);
