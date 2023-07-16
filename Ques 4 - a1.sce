x = imread("try.jpg");
[r,c] = size(x);
for i = 1 : r
    for j = 1 : c
        for k = 1 : 3
            z_one(i,j,k) = 0;
            z_two(i,j,k) = 1;
        end            
    end    
end
and_one = x & z_one;
or_one = x | z_one;
figure;
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imshow(z_one);
subplot(2,2,3);
imshow(and_one);
subplot(2,2,4);
imshow(or_one);
