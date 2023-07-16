I = imread('tv.png');
salt = imnoise(I,'salt & pepper');
subplot(1,3,1);
imshow(I);
title('Original Image');
subplot(1,3,2);
imshow(salt);
title('Noisy-Salt and Pepper');
filter=fspecial('average');
imf=imfilter(I,filter);
subplot(1,3,3);
imshow(imf);
title('Using Mean Filter');
