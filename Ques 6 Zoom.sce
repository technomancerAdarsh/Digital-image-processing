img=imread('rose.jpeg');
subplot(2,2,1);
imshow(img);
title('Original image');

img1=imresize(img,2);
subplot(2,2,2);
imshow(img1);
title('Double-sized Image');

img2=imcrop(img1,[1,1,500,500]);
subplot(2,2,3);
imshow(img2);
title('Zoomed using imresize()');

r=size(img,1);
c=size(img,2);
img3=zeros(2*r,2*c);
x=1;
y=1;
for i=1:r
    for j=1:c
        img3(x,y)=img(i,j);
        y=y+2;
    end 
    x=x+2;
end
r=size(img3,1);
c=size(img3,2);
for i=1:r
    for j=1:c
        if (modulo(i,2)==1 && modulo()==0) then
            img3(i,j)=img3(i,j-1);
        elseif (modulo(i,2)==0) then
            img3(i,j)=img(i-1,j);
        end
    end
end
img2=imcrop(img3,[1,1,500,500]);
subplot(2,2,4);
imshow(img3);
title('Zoomed using replication');
