image = imread('img2.jpg');
subplot(2,2,1);
imshow(image);
title('Original Image');

//Translation for (x,y) = (70,70)
mat = [ 1  0 0;...
        0  1 0;...
       70 70 1];

s2 = imtransform(image,mat,'affine');
subplot(2,2,2);
imshow(s2);
title('Translation for (70,70)');

//Scaling for w,h = (3,3)
mat = [3 0 0;...
       0 3 0;...
       0 0 1];
       
s3 = imtransform(image,mat,'affine');
subplot(2,2,3);
imshow(s3);
title('Scaling for (3,3)');

//Rotation for theta = 30 degree
mat = [cosd(30) -sind(30);...
       sind(30) cosd(30);...
       0        0       ];
       
s4 = imtransform(image,mat,'affine');
subplot(2,2,4);
imshow(s4);
title('Rotation for 30 degree');
