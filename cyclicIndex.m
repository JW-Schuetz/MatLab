function ndx = cyclicIndex( n, N )
    % Beispiel: N = 5
    % n     ndx
    %----------
    % 1     1
    % 2     2
    % 3     3
    % 4     4
    % 5     5
    % 6     1
    % 4     2
    % usw. usf.
    ndx = 1 + mod( n - 1, N );
end