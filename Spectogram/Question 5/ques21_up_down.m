 clc;clear all; close all
% % upsample by n
% % up=3;
% up=input('Upsample by:');
% x=[1 2 3 4 3 2 1];
% l=length(x);
% % If even length,make it odd length for indexing convinance
% if mod(l,2)~=0
%     li=l-1;
% end
% xi=-li/2:1:li/2;
% 
% % Upsampling index
% y_len=l*up+up-1;
% 
% if mod(y_len,2)~=0
%     y_leni=y_len-1;
% end
% yi=-y_leni/2:1:y_leni/2
% 
% 
% j=1;k=1;
% while j<=y_leni-up
%    for i=1:1:up-1
%        y(j)=0;
%        j=j+1;
%    end
%    y(j)=x(k);
%    j=j+1;k=k+1;
% end
%   for i=1:1:up-1
%        y(j)=0;
%        j=j+1;
%   end
%   figure,
%     subplot(1,2,1),stem(xi,x), title('input signal');
%    subplot(1,2,2),stem(yi,y);title(['Output signal upsampled by:',num2str(up)])
%    
   
   
%%
% Downsample by n
down=2;
%    down=input('Upsample by:');
x=[1 2 3 4 5 6 5 4 3 2 1];
l=length(x);
% If even length,make it odd length for indexing convinance
if mod(l,2)~=0
    li=l-1;
end
xi=-li/2:1:li/2;

j=1;
for d=li/2+1:down:l
    ydp(j)=x(d);
    j=j+1;
end

j=1;
for d1=li/2-down+1:-down:1
    ydne(j)=x(d1);
    j=j+1;
end
ln=length(ydne);
ln1=ln;
for i=1:ln
    ydn(i)=ydne(ln1);
    ln1=ln-1;
end
yd=[ydn ydp]

% output index
l=length(yd);
% If even length,make it odd length for indexing convinance
if mod(l,2)~=0
    yl=l-1;
end
yli=-yl/2:1:yl/2;

  figure,
    subplot(2,1,1),stem(xi,x), title('input signal');
   subplot(2,1,2),stem(yli,yd);title(['Output signal downsampled by:',num2str(down)])
   
% 
% 
