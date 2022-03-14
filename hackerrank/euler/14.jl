function compute_collatz_length!(collatz_lengths,i)
    if i > length(collatz_lengths)
        if  i%2 == 0
            return compute_collatz_length!(collatz_lengths,i÷2) + 1
        else
            return compute_collatz_length!(collatz_lengths,(3*i+1)÷2) + 2
        end
    elseif collatz_lengths[i] != 0
        return collatz_lengths[i]
    else
        if  i%2 == 0
            return collatz_lengths[i] = compute_collatz_length!(collatz_lengths,i÷2) + 1
        else
            return collatz_lengths[i] = compute_collatz_length!(collatz_lengths,(3*i+1)÷2) + 2
        end
    end
end
function main(x,collatz_lengths,max_collatz_lengths)
    if x <= length(max_collatz_lengths)
        return max_collatz_lengths[x]
    end
    answer = max_collatz_lengths[end]
    max_length = compute_collatz_length!(collatz_lengths,answer)
    for i = length(max_collatz_lengths)+1:x
        compute_collatz_length!(collatz_lengths,i)
        if collatz_lengths[i] >= max_length
            max_length = collatz_lengths[i]
            append!(max_collatz_lengths,i)
            answer = i
        else
            append!(max_collatz_lengths,max_collatz_lengths[end])
        end
    end
    return answer
end

N = parse(Int, readline(stdin))
collatz_lengths = zeros(Int,10_000_000)
collatz_lengths[1] = 1
max_collatz_lengths = [1]
for i = 1:N
    x = parse(Int, readline(stdin))
    println(main(x,collatz_lengths,max_collatz_lengths))
end