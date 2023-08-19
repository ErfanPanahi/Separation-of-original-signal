function [detA] = p1 (A)
[n,m]=size(A);
if n==m
    detA=0;
    if n==1
        detA=A(1,1);
    else 
        for i=1:n
            B=A;
            a=B(1,i);
            B(1,:)=[];
            B(:,i)=[];
            detA=detA+(-1)^(i+1)*a*p1(B);
        end
    end
else
    detA = "Matrix must be square.";
end
end

