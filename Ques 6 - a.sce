img = imread("rose.jpeg");
figure;
subplot(2,2,1);
imshow(img);
title('Original Image'); 

mat = [  1 0 0;...
         0 1 0;...
        20 0 1];      
img_x = imtransform(img,mat,'affine');
subplot(2,2,2);
imshow(img_x);
title('Translation for x = 20');
 
mat = [  1  0 0;...
         0  1 0;...
         0 20 1];
img_y = imtransform(img,mat,'affine');
subplot(2,2,3);
imshow(img_y);
title('Translation for y = 20');
 
mat = [   1  0 0;...
          0  1 0;...
         20 20 1];
img_xy = imtransform(img,mat,'affine');
subplot(2,2,4);
imshow(img_xy);
title('Translation for (20,20)');
