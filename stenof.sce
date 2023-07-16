function [N]=numel(X)
[m , n ]= size (X ) ;
N = m * n ;
endfunction
function [psnr, mse, maxerr]=psnr_mse_maxerr(X, Xapp)
X = double ( X );
Xapp = double ( Xapp );
absD = abs(X - Xapp ) ;
A = absD .^2;
mse = sum ( A (:) ) / numel ( X ) ;
psnr = 10* log10 (255*255/ mse ) ;
maxerr = round ( max ( absD (:) ) ) ;
endfunction
 
msg="This is my Dip Assignment ";
code=ascii(msg);
code=uint8(code);
for i=1:1:size(code,2)
     code(i)=code(i)-i;
end
code=dec2bin(code,8);
code=mtlb_t(code);
code=base2dec(code,10);
code=code(:);
t=1;
len=size(msg)*8
mod=2;
im=imread('img2.jpg');
im1=im;
filter=fspecial('gaussian');
im=imfilter(im,filter);
figure(0);
subplot(1,2,1);
imshow(im);
for i=size(im,1):-1:1
    for j=size(im,2):-1:1
        temp=dec2bin(im(i,j));
        temp=base2dec(temp,10);
        LSD=modulo(temp,2);
        if code(t)~=LSD then
            temp=bitxor(LSD,code(t));
            t=t+1;
            if t>len then
                break;
            end
            im(i,j)=im(i,j)+temp;
    end
        end
    if t>len then
        break;
    end
end
subplot(1,2,2);
imshow(im);
imwrite(im,'imgresult.jpg');
imageN=imread('imgresult.jpg');
imageO=imread('img2.jpg');
psnr=psnr_mse_maxerr(imageO,imageN);
disp("PSNR= ",psnr);
