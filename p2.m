function [invA] = p2 (A)
[n,m]=size(A);
if n==m
    detA=p1(A);
    if detA==0
         invA = "Matrix must be square.";
    else
        for i=1:n
            for j=1:n
                B=A;
                B(j,:)=[];
                B(:,i)=[];
                invA(i,j)=(-1)^(i+j)*p1(B);
            end
        end
        invA=invA/detA;
    end
else
     invA = "Matrix is not invertible.";
end
end