def to_camel_case(str)
  if str.empty?  # Check xem chuỗi nhập vào có phải là rỗng hay không
    return '' 
  elsif str.include?('_') # Check xem trong chuỗi này có kí tự _ không nếu có thì thực hiện điều kiện if
    arr = str.split('_') # Ta gán biến arr bằng chuỗi đã được cắt ra
    return arr[0].to_s + arr[1,str.length].map(&:capitalize).join # Ta sẽ giữ giá trị đầu và biến đổi các kí tự sau có chữ cái đầu tiên viết hoa
  elsif str.include?('-') 
    arr = str.split('-') 
    return arr[0].to_s + arr[1,str.length].map(&:capitalize).join 
  end
end

# def to_camel_case(str)
#   str.gsub(/[_-](.)/) {$1.upcase} # 
# end

to_camel_case('')
puts to_camel_case("the_stealth_warrior_warrior_warrior_warrior_warrior")
puts to_camel_case("Kira-Yasuo-123")

