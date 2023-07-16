I= imread('tv.png');
subplot(1,3,1);
imshow(I);
title('Original Resized');
I=imnoise(I,'gaussian');
subplot(1,3,2);
imshow(I);
title('Gaussian Noise');
filter=fspecial('gaussian');
imf=imfilter(I,filter);
subplot(1,3,3);
imshow(imf);
title('Filter Applied');
