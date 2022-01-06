def friend(friends)
    return friends.delete_if {|x| x.length != 4} # Xoá phần tử trong mảng nếu nó không thoả điều kiện
end

# def friend(friends)
#     return friends.select {|x| x.length == 4} # Chọn các phần tử nếu nó thoả đều kiện
# end

puts friend(["Ryan", "Kieran", "Mark"])