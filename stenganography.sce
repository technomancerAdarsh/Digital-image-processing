function [N]=numel(X)
[m , n ]= size (X ) ;
N = m * n ;
endfunction
function [PSNR, Mse,increaser]=PSNR_Mse_iNCREASER(X, Xap)
X = double ( X );
Xap = double ( Xap );
absD = abs(X - Xap ) ;
A = absD .^2;
Mse = sum ( A (:) ) / numel ( X ) ;
PSNR = 10* log10 (255*255/ Mse ) ;
increaser = round ( max ( absD (:) ) ) ;
endfunction
 
msg="This is my Digital image processing assignment";
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
im=imread('Flower.jpg');
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
imageO=imread('Flower.jpg');
psnr=PSNR_Mse_iNCREASER(imageO,imageN);
disp("Peak signal to noise ratio= ",psnr);
