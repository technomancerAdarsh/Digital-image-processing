function bw=bwt(image,thresh)
    for i=1:size(image,1)
        for j=1:size(image,2)
            if image(i,j)<thresh then
                bw(i,j)=0
            else
                bw(i,j)=1
            end
        end
    end
endfunction
image=imread('img1.jpg');
imshow(image);
Pbin=bwt(image,input("Enter the threshold "));
imshow(Pbin)
Pbin1 = double(Pbin);

[m,n] = size(Pbin1);

w=[1 1 1;1 1 1;1 1 1];

for i=2:m-1

for j=2:n-1

b(i,j) = [w(1)*a(i-1,j+1) + w(2)*a(i,j+1) + w(3)*a(i+1,j+1) + w(4)*a(i-1,j) + w(5)*a(i,j) + w(6)*a(i+1,j) +w(7)*a(i-1,j-1) + w(8)*a(i,j-1) + w(9)*a(i+1,j-1) ] /9

end

end

q=unit8(b);

imshow(q);
