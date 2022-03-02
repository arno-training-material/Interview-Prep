function main(N)
    e1 = 2
    e2 = 8
    sum = e1 + e2
    while (e3 = 4*e2 + e1) <= N
        sum += e3
        e1 = e2
        e2 = e3       
    end
    return sum
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end