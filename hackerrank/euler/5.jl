function main(N)
    if N == 1
        return 1
    end
    primes = [2]
    answer = 2^floor(Int,log(N)/log(2))
    for i in 3:2:N
        flag_prime = true
        for j in primes
            if i%j == 0
                flag_prime = false
                break
            end
        end
        if flag_prime
            append!(primes,i)
            answer *= i^floor(Int,log(N)/log(i))
        end
    end
    return answer
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end
