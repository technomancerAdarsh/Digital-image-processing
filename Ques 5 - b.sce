img = imread('sunflower.jpeg');
figure;
imshow(img);
img = rgb2gray(img);
img = imresize(img,[100,100]);
img = uint16(img);
[r,c] = size(img);
freqn = zeros(1,256);
for i=1:r
    for j=1:c
        freqn(img(i,j)+1) = freqn(img(i,j)+1) + 1;
    end
end
figure;
bar(0:255,freqn,'black');
x = freqn/(r*c);
cum_sum = 255 * (cumsum(x));
s = round(cum_sum);
s = uint16(s);
s = s+1;
freqn_new = zeros(1,256);
for i = 1:256
    freqn_new(s(i)) = freqn_new(s(i)) + freqn(i);
end
figure;
bar(0:255,freqn_new,'black');
