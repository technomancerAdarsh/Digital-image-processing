x = imread("try.jpg");
[r,c]=size(x);

R = uint32(0);
B = uint32(0);
G = uint32(0);

for i=1:r
    for j=1:c
        R = R + x(i,j,1);
        B = B + x(i,j,2);
        G = G + x(i,j,3);
    end
end
px = r*c
disp("Red Mean: ", R/px);
disp("Blue Mean: ", G/px);
disp("Green Mean: ", B/px);
