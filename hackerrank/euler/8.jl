function main(x,N,K)
    largest_product = 0
    for i = 1:(N-K+1)
        current_product = prod(x[i:(i+K-1)])
        if current_product > largest_product
            largest_product = current_product
        end
    end
    return largest_product
end

T = parse(Int, readline(stdin))
for i = 1:T
    N,K = (parse(Int, x) for x in split(readline()))
    x = readline()
    x = [parse(Int,c) for c in x]
    println(main(x,N,K))
end