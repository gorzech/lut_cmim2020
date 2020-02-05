function A = insert_sort_2(A)

ii = 2;
while ii <= length(A)
    x = A(ii);
    jj = ii - 1;
    while jj >= 1 && A(jj) > x
        A(jj + 1) = A(jj);
        jj = jj - 1;
    end
    A(jj + 1) = x;
    ii = ii + 1;
end