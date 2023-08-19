function p4a (filename,input,output,n0,a)
[x,fs]=audioread(filename);
t=linspace(0,numel(x)/fs,numel(x));
plot(t,x);
xlabel('Time');
ylabel('x');
audiowrite(input,x,fs);
h(1)=1;h(n0+1)=a;
y=conv(x,h);
t_y=linspace(0,numel(y)/fs,numel(y));
audiowrite(output,y,fs);
plot(t_y,y);
xlabel('Time');
ylabel('y');
end
