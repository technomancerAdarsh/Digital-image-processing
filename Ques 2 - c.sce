sp = imread ("rose.jpeg");
imshow (sp);
sp_adj = imadjust(sp,[0,0.5],[0.5,1]);
figure;
imshow (sp_adj);
