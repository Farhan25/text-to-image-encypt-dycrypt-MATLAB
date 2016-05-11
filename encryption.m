function img=encryption(str,imgfile)
ascii=double(str);
if mod(length(ascii),3)==1
    ascii=[ascii 0 0];
elseif mod(length(ascii),3)==2
    ascii=[ascii 0];
end

len=length(ascii);

image=ones(1,len/3,3);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);

j=1;
for i=1:3:len
    r(1,j)=ascii(i)*2;
    g(1,j)=ascii(i+1)*2;
    b(1,j)=ascii(i+2)*2;
    j=j+1;
end

temp_img=uint8(cat(3,r,g,b));
imwrite(temp_img,imgfile);

img=temp_img;
