function d = diffMatrix( n, ~ )
% provides the matrix d for calculation the differences of succeeding vector elements
% if more than one arguments are provided, last line of d will be omitted
% example: d * ( a1, ..., an )' = ( a2 - a1, a3 - a2, ..., a1 - an )'
    e = eye( n );
    d = circshift( e, 1, 2 ) - e;

    switch nargin
        case 2
            d( n, : ) = [];
    end
end