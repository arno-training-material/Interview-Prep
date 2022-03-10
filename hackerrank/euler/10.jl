function calculate_primes(M)
    sieve = ones(Bool,M)
    sieve[1] = false
    next_prime = 2
    while !isnothing(next_prime)
        sieve[2*next_prime:next_prime:end] .= false
        next_prime =  findnext(sieve,next_prime+1)
    end
    return sieve
end
function main(N,sieve)
    sum = 0
    for i in 1:N
        sum += sieve[i]*i
    end
    return sum
end
sieve = calculate_primes(10^6)

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N,sieve))
end