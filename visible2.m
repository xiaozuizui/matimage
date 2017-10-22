function [  ] = visible2(Feature,width,height)
%VISIBLE 此处显示有关此函数的摘要
%   此处显示详细说明
feature = zeros(height,width,6);
 for i=1:height
        for j=1:width
            for k=1:6
                feature(i,j,k)=Feature((i-1)*width+j,k);
            end
        end
 end

for i=1:6
%         subplot(6,6,i);
        figure(i);
        imagesc(feature(:,:,i))

end

end

