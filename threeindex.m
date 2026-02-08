
a=rand(15,200); 
b=rand(15,1);
maxProduct = -Inf; 
n = size(a,2);
for i = 1:n-2
    for j = i+1:n-1
        for k = j+1:n
            % Three-band calculation formula：c
            c = a(:,i).* a(:,j).* a(:,k);
            d=corr(c,b)^2
            
            if d > maxProduct
                maxProduct = d;
                x=i
                y=j
                z=k
            end
        end
    end
end


fprintf('max: %d\n,x,y,z', maxProduct);