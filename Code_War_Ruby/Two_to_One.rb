def longest(a1, a2)
    return (a1+a2).chars.sort.join.squeeze #Nối 2 chuỗi lại sau đó chuyển thành mảng(char) để sắp xếp(sort) theo thứ tự sau đó chuyển lại thành chuỗi và lọc cá kí tự trùng liên tiếp
end

puts longest("aretheyhere", "yestheyarehere")