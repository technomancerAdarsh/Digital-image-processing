I = imread('tv.png');
I=imresize(I,[100,100]);
salt = imnoise(I,'salt & pepper');
subplot(1,3,1);
imshow(I);
title('Original Image');
subplot(1,3,2);
imshow(salt);
title('Noisy-Salt and Pepper');
s=size(I);
d=zeros(uint8(s(1)),uint8(s(2)));
for i=2:s(1)-1
    for j=2:s(2)-1
        d(i,j)=median(uint8([I(i-1,j-1),I(i-1,j),I(i-1,j+1);I(i,j-1),I(i,j),I(i,j+1);I(i+1,j-1),I(i+1,j),I(i+1,j+1)]));
    end
end
subplot(1,3,3);
imshow(uint8(d));
title('Restored Image');
