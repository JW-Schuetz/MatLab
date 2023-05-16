function newMean = floatingMean( mean, n, xnPlus1 )
    % mean:     alter Mittelwert
    % n:        aktueller Index; 1,2,...
    % xnPlus1:  neuer Zufallswert
    % newMean:  neuer Mittelwert
    n       = n - 1;
    newMean = ( n * mean + xnPlus1 ) / ( n + 1 );
end
