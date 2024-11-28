%ussage: factorial(5,N)

% Base case: The factorial of 0 is 1
factorial(0, 1).

% Recursive case: Factorial of N is N * Factorial of (N-1)
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, R1),
    Result is N * R1.
