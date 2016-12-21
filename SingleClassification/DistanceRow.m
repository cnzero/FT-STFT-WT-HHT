% function discriptions
% Input:
%       aRow, 1xn
%       aMatrix, mxn
% Output:
%       nRow, the nearest sequence between aRow and every row of aMatrix

function nRow = DistanceRow(aRow, aMatrix)
    N = size(aMatrix, 1);
    distance = [];
    for n=1:N
        distance = [distance, norm(aRow-aMatrix(n, :))];
    end
    % find the nearest sequence number and its position
    [~, nRow] = min(distance);
    
    % built-in <min> or <max>
%     [mini_value, position_mini_value] = min(sequence);
    