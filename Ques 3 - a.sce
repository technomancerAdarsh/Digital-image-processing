x = imread("tv.png");
y = imread(".jpeg");
x_size = size(x);
y = imresize(y,[x_size(1),x_size(2)]);
r = x_size(1);
c = x_size(2);
x1 = double(x);
y1 = double(y);
for i = 1 : r
    for j = 1 : c
        for k = 1 : 3
            z(i,j,k) = x1(i,j,k) + y1(i,j,k);
            if(z(i,j,k)>255) then
                z(i,j,k) = 255;
            end
        end            
    end    
end
xy_add = imadd(x,y);
z = uint8(z);
figure;
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imshow(y);
subplot(2,2,3);
imshow(z);
subplot(2,2,4);
imshow(xy_add);
