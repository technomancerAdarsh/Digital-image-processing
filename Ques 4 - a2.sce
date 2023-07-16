x = imread("pic.jpg");
[r,c] = size(x);
for i = 1 : r
    for j = 1 : c
        for k = 1 : 3
            z_one(i,j,k) = 0;
            z_two(i,j,k) = 1;
        end            
    end    
end
and_two = x & z_two;
or_two = x | z_two;
figure;
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imshow(z_two);
subplot(2,2,3);
imshow(and_two);
subplot(2,2,4);
imshow(or_two);
