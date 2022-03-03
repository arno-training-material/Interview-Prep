function main(N)
    factor_ceiling = floor(Int,sqrt(N))
    factor = 2
    largest_factor = 2
    while factor <= factor_ceiling 
        while N%factor == 0
            N ÷= factor
            largest_factor = factor
            factor_ceiling = floor(Int,sqrt(N))
        end
        factor += 1
    end
    if N == 1
        return largest_factor
    else
        return N
    end
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end