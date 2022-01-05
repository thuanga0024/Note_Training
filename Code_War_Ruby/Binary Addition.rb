
def add_binary(a,b)
    #your code here
    values = ''
    sumToBinary = a + b
    while sumToBinary != 0
        values += (sumToBinary%2).to_s
        sumToBinary = sumToBinary/2
    end
    return values.reverse
end


# def add_binary(a,b) (a+b).to_s(2) end Good Code

binary = add_binary(5,9)
puts binary

