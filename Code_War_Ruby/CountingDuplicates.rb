def duplicate_count(text)
    #your code here
    s = 0
    count = Hash.new(0)
    for i in 0...text.length
        count[text[i].downcase] += 1
    end
    count.each_value do |x| 
        if x > 1
            s += 1
        end
    end
    return s
end

# def duplicate_count(text)
#     hsh = Hash.new(0) # Tạo ra 1 Hash mặc định các đối tượng được tạo ra đều có giá trị mặc định là 0
#     text.downcase.chars.each { |c| hsh[c] += 1 } # Đầu tiên biến chuỗi thành chữ thường sau đó đưa chuỗi này thành mảng bằng option chars , tiếp đến ta lấy các kí tự đưa vào Hash và cộng giá trị các kí tự lên
#     hsh.values.count { |k| k > 1 } # Đầu tiên ta lấy các giá trị trong Hash bằng option values , tiếp đến dùng option count để đếm với điều kiện giá trị ta lấy từ Hash phải lớn hơn 1 
# end

puts duplicate_count('abcdeaB')

