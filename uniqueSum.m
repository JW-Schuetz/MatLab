function [ uniqueT, uniqueD ] = uniqueSum( t, d )
    % removes multiple occourance of elements in vector t - the unique
    % vector uniqueT is returned
    % provides the sum of corresponding elements of multiples in vector d
    % in vector uniqueD

    % transform into column vectors
    t = t( : );
    d = d( : );

    sT = size( t );
    sD = size( d );

    if( sT( 1 ) ~= sD( 1 )  || sT( 2 ) ~= 1 || sD( 2 ) ~= 1 )
        uniqueT = [];
        uniqueD = [];
        return
    end

    % sort vector t
    [ t, ndx ] = sort( t );
    d          = d( ndx );

    [ uniqueT, ndxuT ] = unique( t, 'first' );
    uniqueD            = d( ndxuT );

    T   = length( t );
    N   = length( ndxuT );
    anz = [ diffMatrix( N, 1 ) * ndxuT; T + 1 - ndxuT( end ) ]';

    for n = 1 : N
        a = anz( n );
        if( a ~= 1 )
            m            = ndxuT( n );
            uniqueD( n ) = sum( d( m : m + a - 1 ) );
        end
    end
end