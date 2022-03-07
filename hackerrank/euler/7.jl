function main(n)
    primes = [2]
    sizehint!(primes,n)
    x = 3
    while length(primes) < n
        flag_prime = true
        ceiling = floor(Int,sqrt(x))
        for p in primes
            if p > ceiling
                break
            end
            if x%p == 0
                flag_prime = false
                break
            end
        end
        if flag_prime
            append!(primes,x)
        end
        x += 2
    end
    primes[end]
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end