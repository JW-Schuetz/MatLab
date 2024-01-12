function [ zaehlerstand, d, h ] = prepareMeasuredValues( Messwerte, varargin )
    Spalte = 2;

    if( nargin == 2 ) 
        Spalte = cell2mat( varargin );
    end

    M            = size( Messwerte, 1 );
    zaehlerstand = zeros( M, 1 );
    h            = zeros( M, 1 );
    d            = datetime;
    dStart       = datetime( Messwerte{ 1, 1 },  'Format', 'dd.MM.yyyy HH:mm' );

    for m = 1 : M
        % Datum
        zaehlerstand( m ) = Messwerte{ m, Spalte };

        d( m ) = datetime( Messwerte{ m, 1 }, 'Format', 'dd.MM.yyyy HH:mm' );
        h( m ) = hours( d( m ) - dStart );
    end
end