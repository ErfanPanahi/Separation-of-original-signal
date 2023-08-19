function [a,n0] = p4b (filename_x,filename_y)
[x,fs_x]=audioread(filename_x);
[y,fs_y]=audioread(filename_y);
[r_xy,lags]=xcorr(x,y);
n0=-lags(find(r_xy==max(r_xy(1:length(x)))));
a=max(r_xy(1:length(x)))/max(r_xy)
stem(-lags,r_xy);
xlabel('lags');
ylabel('xcorr(x,y)');
end
