def digital_root(n)
    sum = 0
    lengthNumber = n.to_s.length
    if n.to_s.length > 1
        for num in 1..(lengthNumber-1)
            a1 = n%10
            n = n/10
            if num == lengthNumber-1
                sum += (a1 + n)
            else
                sum += a1 
            end
        end
        digital_root(sum)
    else 
        return n
    end
end

values = digital_root(493193)
puts values

#def digital_root(n)
#    n < 10 ? n : digital_root(n / 10 + n % 10)
#end