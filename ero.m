function newMatrix = eroGE(matrix, m, n)
%
% Perform elementary row operations to transform the elements below (m,n)
% to 0.  
%
% Syntax: ero(matrix, m, n)

% Written by Daniel Underwood on 02-19-2012


%Find dimensions of matrix
dim = size(matrix);

%Reduce column below (m,n)
for i=m+1:dim(1)
        
    % display factors to user
    if matrix(i,n)~=0 
        fprintf('%s %d','Added ', (-1)*(matrix(i,n)/matrix(m,n)));
        fprintf('%s %d',' times row ', m);
        fprintf('%s %d \n',' to row ', i);
    end
    
    % reduce row
    matrix(i,:) = matrix(i,:) + (-1)*(matrix(i,n)/matrix(m,n))*matrix(m,:); 
end


%Set return value to the transformed matrix
newMatrix = matrix;
return 