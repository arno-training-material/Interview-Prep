function main(N)
    answer = zero(BigInt)
    for i = 1:N
        answer+=parse(BigInt, readline(stdin))
    end
    answer÷=(10*one(BigInt))^39
    while answer÷(10*one(BigInt))^10 != zero(BigInt)
        answer÷= 10
    end
    return answer
end

N = parse(Int, readline(stdin))
println(main(N))
