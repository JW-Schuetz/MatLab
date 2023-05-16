function in = interpolate( t, in )
    % evtl. vorhandene NaN Elemente entfernen
    ndx = ~isnan( in );
    in = in( ndx );

    % Interpolation
    in = interp1( t( ndx ), in, t );
end
