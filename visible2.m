function [  ] = visible2(Feature,width,height)
%VISIBLE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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

