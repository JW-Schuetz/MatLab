function [ zaehlerstand, d, h ] = PrepareMeasuredValues( Messwerte, varargin )
    if( nargin == 2 ) 
        Spalte = 3;
    else
        Spalte = 2;
    end

    M            = length( Messwerte );
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