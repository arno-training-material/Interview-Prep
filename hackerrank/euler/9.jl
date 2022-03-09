function main(x)
    largest_product = -1
    for b = 1:(x-1)
        a = (-x^2 + 2*x*b)//(2*b-2*x)
        if a.num % a.den == 0 && a.num != 0
            a = a.num ÷ a.den
            c = x - a - b
            current_product = a*b*c
            if current_product > largest_product
                largest_product = current_product
            end
        end
    end
    return largest_product
end

T = parse(Int, readline(stdin))
for i = 1:T
    x = parse(Int, readline(stdin))
    println(main(x))
end