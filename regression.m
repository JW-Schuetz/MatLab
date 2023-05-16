function [ a, b ] = regression( x, y )
    % liefert y = ax + b
    N = length( y );

    sx = sum( x.*x ) - sum( x )^2/N;
    sc = sum( x.*y ) - sum( x )*sum( y )/N;

    a = sc/sx;
    b = mean( y ) - mean( x )*a;
end