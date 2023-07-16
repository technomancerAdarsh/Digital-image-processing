//FFT AND IFFT
img=imread('sunflower.jpeg')
//img_1=imread('PANDA.jpeg')

im_gray=rgb2gray(img) //a= gray
im_fg=fft(im2double(im_gray))

im_fgi=ifft(im_fg)

subplot(2,2,1);
imshow(img);
title("Original RGB Image");

subplot(2,2,2);
imshow(im_gray);
title("GRAY SCALE IMG");

subplot(2,2,3);
imshow(im_fg);
title("FFT");

subplot(2,2,4);
imshow(im_fgi);
title("Inverse FFT");
