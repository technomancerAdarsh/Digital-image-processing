img = imread("rose.jpeg");
imshow(img);
img_g = rgb2gray(img);
figure;
imshow(img_g);
a = 256;
neg_img = (a-1) - img_g;
figure;
imshow(neg_img);
