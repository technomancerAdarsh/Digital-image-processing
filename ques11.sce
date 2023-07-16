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
  
erode = imerode(I, se); 
subplot(1, 3, 3),  
imshow(erode); 
title("Eroded image");
