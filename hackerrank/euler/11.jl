function main(x)
    largest_product = 0
    for i = 1:20
        for j = 1:17
            current_product = prod(x[i,j:j+3])
            if current_product > largest_product
                largest_product = current_product
            end
        end
    end
    for i = 1:17
        for j = 1:20
            current_product = prod(x[i:i+3,j])
            if current_product > largest_product
                largest_product = current_product
            end
        end
    end
    for i = 1:17
        for j = 1:17
            current_product = prod([x[i,j],x[i+1,j+1],x[i+2,j+2],x[i+3,j+3]])
            if current_product > largest_product
                largest_product = current_product
            end
        end
    end
    for i = 1:17
        for j = 4:20
            current_product = prod([x[i,j],x[i+1,j-1],x[i+2,j-2],x[i+3,j-3]])
            if current_product > largest_product
                largest_product = current_product
            end
        end
    end
    return largest_product
end

x = split.(readlines(), " ")
x = [parse(Int,c) for r in x for c in r]
x = reshape(x,20,20)
println(main(x))
