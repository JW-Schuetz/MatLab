function X = calcMean( n, x, X )
    % Update-Formel für den Mittelwert:
    % X_(n) = [ ( n - 1 ) * X_(n-1) + x_(n) ] / n
    X = ( ( n - 1 ) * X + x ) / n;
end
