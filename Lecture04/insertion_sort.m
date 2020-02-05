function A = insertion_sort( A )
% Sort function based on insertion sort algorithm
% Based on pseudo-code avliable on wikipedia: 
% https://en.wikipedia.org/wiki/Insertion_sort#Algorithm
% Note that pseudocode is for zero-based arrays, so it has to be accounted
% for
    n = length(A);
    ii = 2;
    while ii <= n
        x = A(ii);
        jj = ii - 1;
        while jj >= 1 && A(jj) > x
            A(jj + 1) = A(jj);
            jj = jj - 1;
        end
        A(jj + 1) = x;
        ii = ii + 1;
    end
end 
