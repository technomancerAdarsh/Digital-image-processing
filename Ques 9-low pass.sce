//low pass filtering

img = imread("rose.jpeg");
S=rgb2gray(img)

h1 = mkfftfilter(S,'gauss',0.2,0.3);
Sa1 = fft2(im2double(S));
Sb1 = Sa1.*fftshift(h1);
Sc1 = real(ifft(Sb1));      imshow(Sc1);
title("Low pass gauss,0.2,0.3");
