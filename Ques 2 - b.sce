sp = imread ("sunflower.jpeg");
imshow(sp);
sp_flip1 = flipdim(sp,1);
figure;
imshow(sp_flip1);
sp_flip2 = flipdim(sp,2);
figure;
imshow(sp_flip2);
sp_flip3 = flipdim(sp,3);
figure;
imshow(sp_flip3);