im1 = imread ("rose.jpeg");

A = im2double (im1(:,:,1));

B = im2double (im1 (:,:,2));

C = im2double (im1(:,:,3));

A = A* 0.299;

B= B * 0.587;

C = C * 0.114;

Im2 = imadd (A,B);

Im2 = imadd (Im2,C);

figure;

imshow (im2);
