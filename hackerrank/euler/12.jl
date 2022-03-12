function next_prime!(primes)
next_prime = primes[end]
    while true
        next_prime += 2    
        prime_flag = true
        for p in primes
            if next_prime%p == 0
                prime_flag = false
                break
            end
        end
        if prime_flag
            push!(primes,next_prime)
            break
        end

    end
    return nothing
end
function main(N,primes)
    triangle_number = 1
    triangle_add = 2
    num_devisors = 1
    while num_devisors <= N
        triangle_number += triangle_add
        triangle_number_remainder = triangle_number
        triangle_add += 1
        num_devisors = 1
        prime_index = 1
        while primes[prime_index]^2 <= triangle_number_remainder
            expo = 0
            while triangle_number_remainder%primes[prime_index] == 0
                triangle_number_remainder÷=primes[prime_index]
                expo += 1
            end
            num_devisors *= (expo+1)
            prime_index += 1
            if prime_index > length(primes)
                next_prime!(primes)
            end
        end
        if triangle_number_remainder != 1
            num_devisors *= 2
        end
    end
    return triangle_number
end
primes = [2,3]

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N,primes))
end