function sum_1_to_k(k)
    k*(k+1)÷2
end
function main(N)
    3*sum_1_to_k((N-1)÷3) + 5*sum_1_to_k((N-1)÷5) - 15*sum_1_to_k((N-1)÷15)
end

T = parse(Int, readline(stdin))
for i = 1:T
    N = parse(Int, readline(stdin))
    println(main(N))
end
