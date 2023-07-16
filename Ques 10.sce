a=imread('rose.jpeg');
b=rgb2gray(a);
subplot(1,4,1);
imshow(b);

s=edge(b,'sobel',0.5);
subplot(1,4,2);
imshow(s);

p=edge(b,'prewitt');
subplot(1,4,3);
imshow(p);

l=edge(b,'log',0.2,'vertical');
subplot(1,4,4);
imshow(l);



