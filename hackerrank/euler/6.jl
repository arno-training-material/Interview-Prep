function main(n)
    sum=n*(n+1)÷2
    sum_sq = (2*n + 1)*(n+1)*n÷6
    return sum^2 - sum_sq
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end