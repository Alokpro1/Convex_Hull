
function L = convex_hull(P)
Ps = sortrows(P,2);
Ps = sortrows(Ps,1);

for c = length(Ps):-1:2 
    if isequal(Ps(c,:),Ps(c-1,:)), Ps(c,:) = []; end
end

Lu = Ps(1:2,:); 

for ii = 3:length(Ps)
    
    Lu = [Lu;Ps(ii,:)]; 
     
    while length(Lu) > 2 
        p1 = [Lu(end-2,:),0]; 
        p2 = [Lu(end-1,:),0]; 
        p3 = [Lu(end,:),0]; 
        
        c = cross(p3-p1,p2-p1); 
        
        if c(3) <= 0 
            Lu(end-1,:) = [];
        else
            break 
        end
    end
end

Ll = [Ps(end,:);Ps(end-1,:)]; 

for ii = 3:length(Ps) 
    % 9. \textbf{do} Append pi to Llower. 
    Ll = [Ll;Ps(end-ii+1,:)];   % add next point to set 
    % 10.1 \textbf{while} Llower contains more than 2 points 
    while length(Ll) > 2 
        p3 = [Ll(end,:),0]; 
        p2 = [Ll(end-1,:),0]; 
        p1 = [Ll(end-2,:),0]; 
        % 10.2 \textbf{while} the last 3 points in Llower do 
        % not make a right turn. 
        c = cross(p3-p1,p2-p1); 
        % 11. \textbf{do} Delete the middle of the last 3 points from 
        % Llower. 
        if c(3) <= 0 
            Ll(end-1,:) = [];
        else
            break 
        end
    end
end

Ll(1,:) = []; Ll(end,:) = [];
L = [Lu;Ll];
end

