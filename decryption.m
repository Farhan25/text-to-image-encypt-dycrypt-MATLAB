function str=decryption(imgfile)
img=imread(imgfile);
number_of_columns=size(img,2);

ascii=ones(1,number_of_columns*3);
for i=1:number_of_columns
    pixel=img(1,i,:);
    r=pixel(1);
    g=pixel(2);
    b=pixel(3);
    ascii(1,(i-1)*3+1)=r/2;
    ascii(1,(i-1)*3+2)=g/2;
    ascii(1,(i-1)*3+3)=b/2;
end

str=char(ascii);
