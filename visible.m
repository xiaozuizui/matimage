function [  ] = visible(Feature,width,height)
%VISIBLE 此处显示有关此函数的摘要
%   此处显示详细说明
rgb = zeros(height,width,3);
word = zeros(height,width,3);
norm = zeros(height,width,3);
texture1 = zeros(height,width,3);
texture2 = zeros(height,width,3);
visi = zeros(height,width);
depth = zeros(height,width);
 for i=1:height
        for j=1:width
            rgb(i,j,1)=Feature((i-1)*width+j,3);
            rgb(i,j,2)=Feature((i-1)*width+j,4);
            rgb(i,j,3)=Feature((i-1)*width+j,5);
            
            word(i,j,1)=Feature((i-1)*width+j,6);
            word(i,j,2)=Feature((i-1)*width+j,7);
            word(i,j,3)=Feature((i-1)*width+j,8);
            
            norm(i,j,1)=Feature((i-1)*width+j,9);
            norm(i,j,2)=Feature((i-1)*width+j,10);
            norm(i,j,3)=Feature((i-1)*width+j,11);
            
            texture1(i,j,1)=Feature((i-1)*width+j,12);
            texture1(i,j,2)=Feature((i-1)*width+j,12);
            texture1(i,j,3)=Feature((i-1)*width+j,12);
            
            texture2(i,j,1)=Feature((i-1)*width+j,15);
            texture2(i,j,2)=Feature((i-1)*width+j,16);
            texture2(i,j,3)=Feature((i-1)*width+j,17);
            
            visi(i,j)=Feature((i-1)*width+j,18);
            %depth(i,j) = Feature((i-1)*width+j,19);
        end
 end

% 
subplot(2,3,1);
imshow(rgb),title('rgb');
subplot(2,3,2);
imshow(word),title('wordp');
subplot(2,3,3);
imshow(norm),title('norm');
subplot(2,3,4);
imshow(texture1),title('t1');
subplot(2,3,5);
imshow(texture2),title('t2');
subplot(2,3,6);
imshow(visi),title('visi');
%imagesc(depth);

end

