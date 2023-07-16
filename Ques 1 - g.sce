sp_pic = imread ("sample.png");
row = size (sp_pic,1);
col = size (sp_pic,2);
R = zeros (row,col,3);
G = zeros (row,col,3);
B = zeros (row,col,3);
R (:,:,1) = sp_pic (:,:,1)
G (:,:,2) = sp_pic (:,:,2)
B (:,:,3) = sp_pic (:,:,3)
imshow (uint8(R));
figure;
imshow (uint8(G));
figure;
imshow (uint8(B));
comb = cat (3,R(:,:,1),G(:,:,2),B(:,:,3))
figure;
imshow (double(comb));
