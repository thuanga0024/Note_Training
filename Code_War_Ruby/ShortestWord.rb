def find_short(s)
    l = (s.split(' ').map { |x| x.length}).min # Tách các từ trong chuỗi ra sau đó dùng map để lấy độ dài từng chuỗi cuối cùng ta lấy giá trị nhỏ nhất trong dãy đó
    return l # l: length of the shortest word
end


# def find_short(s)
#     s.split.map(&:size).min
# end

puts find_short("bitcoin take over the world maybe who knows perhaps")