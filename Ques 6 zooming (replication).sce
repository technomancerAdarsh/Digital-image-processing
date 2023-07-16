I = imread('sunflower.jpeg');
I=imresize(I,[100,100]);
s = size(I);
I2 = zeros(s(1)*2,s(2)*2);
x=size(I2);
g=1;
h=1;
for i=1:100
    for j=1:100
        I2(g,h)=I(i,j);
        h=h+2;
     end
     g=g+2;
     h=1;
end
for i=2:2:200
    for j=2:2:200
        I2(i,j)=I2(i-1,j-1);
        I2(i-1,j)=I2(i,j);
        I2(i,j-1)=I2(i,j);
    end
end
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(uint8(I2));
