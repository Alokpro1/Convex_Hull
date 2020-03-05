n=input90K(1,1);
P=zeros(n,2);
r=1;
x=1;
y=1;
max=0;
for i=2:n+1;
    P(r,1)=input90K(i,1);
    P(r,2)=input90K(i,2);
    r=r+1;
end
    
L=convex_hull(P);
L
for i=1:26;
    x1=L(i,1);
    y1=L(i,2);
    for j=1:26;
        x2=L(j,1);
        y2=L(j,2);
        
        p=sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
        if(max<p)
            max=p;
            x=i;
            y=j;
            
        end
    end
end 


t1=L(x,1);
s1=L(x,2);
t2=L(y,1);
s2=L(y,2);
h=0;
k=0;
for i=2:n+1;
    x1=input90K(i,1);
    y1=input90K(i,2);
    if x1==t1 & y1==s1;
        h=i-1;
    end
     if x1==t2 & y1==s2;
        k=i-1;
    end
    
end
h
k

