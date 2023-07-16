x = imread("rose.jpeg");
y = imread("sunflower.jpeg");
x_size = size(x);
y = imresize(y,[x_size(1),x_size(2)]);
r = x_size(1);
c = x_size(2);

for i = 1 : r
    for j = 1 : c
        for k = 1 : 3
            z_and(i,j,k) = x(i,j,k) & y(i,j,k);
            z_or(i,j,k) = x(i,j,k) | y(i,j,k);
        end            
    end    
end
figure;
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imshow(y);
subplot(2,2,3);
imshow(z_and);
subplot(2,2,4);
imshow(z_or);
