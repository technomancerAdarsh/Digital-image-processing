I = imread("tv.png"); 
figure;
subplot(1, 3, 1),  
imshow(I); 
title("Original image"); 
  
se = imcreatese("rect", 7, 7); 
dilate = imdilate(I, se); 
subplot(1, 3, 2),  
imshow(dilate); 
title("Dilated image"); 



a=imread('rose.jpeg');
b=rgb2gray(a);
subplot(1,4,1);
imshow(b);

p=edge(b,'prewitt');
subplot(1,4,3);
imshow(p);



