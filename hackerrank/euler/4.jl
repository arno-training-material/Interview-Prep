function reverse(n)
    reversed = 0
    while n > 0
        reversed = 10*reversed + n%10
        n = n÷10
    end
    return reversed
end
is_palindrome(n) = n == reverse(n)
function main(N)
    largest_palindrome = 0
    a = 999
    while a >= 100
        b = 999
        while b >= a
            if a*b < N
                if a*b <= largest_palindrome
                    break
                elseif is_palindrome(a*b)
                    largest_palindrome = a*b
                    break
                end
            end
            b -= 1
        end
        a -= 1
    end
    return largest_palindrome
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end
