sp_pic = imread ("try.jpg");
gray_pic = rgb2gray (sp_pic);
row = size (gray_pic,1);
col = size (gray_pic,2);
BW = zeros (row,col);
t = input ("Enter threshold value between 0 to 255 : ");
for i = 1 : row
    for j = 1 : col
        if gray_pic(i,j) <= t then
            BW(i,j) = 1;
        else
            BW(i,j) = 0;
        end
    end
end
figure;
imshow (BW);
