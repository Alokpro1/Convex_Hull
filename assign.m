max=0;
n=input10K(1,1);
x=0;
y=0;
for i=2:n+1;
    x1=input10K(i,1);
    y1=input10K(i,2);
    for j=2:n+1;
        x2=input10K(j,1);
        y2=input10K(j,2);
        
        p=sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
        if(max<=p)
            max=p;
            x=i-1;
            y=j-1;
            
        end
    end
end 
max
x
y
        