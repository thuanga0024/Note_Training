#################################################################
#                             _`				#
#                          _ooOoo_				#
#                         o8888888o				#
#                         88" . "88				#
#                         (| -_- |)				#
#                         O\  =  /O				#
#                      ____/`---'\____				#
#                    .'  \\|     |//  `.			#
#                   /  \\|||  :  |||//  \			#
#                  /  _||||| -:- |||||_  \			#
#                  |   | \\\  -  /'| |   |			#
#                  | \_|  `\`---'//  |_/ |			#
#                  \  .-\__ `-. -'__/-.  /			#
#                ___`. .'  /--.--\  `. .'___			#
#             ."" '<  `.___\_<|>_/___.' _> \"".			#
#            | | :  `- \`. ;`. _/; .'/ /  .' ; |		#
#            \  \ `-.   \_\_`. _.'_/_/  -' _.' /		#
#=============`-.`___`-.__\ \___  /__.-'_.'_.-'=================#
#                          `=--=-'                    



#          _.-/`)
#          // / / )
#       .=// / / / )
#      //`/ / / / /
#     // /     ` /
#    ||         /
#     \\       /
#      ))    .'
#     //    /
#          /


def unique_in_order(iterable)
    if iterable.is_a?(Array) #Theo yêu cầu đề bài thì có thể giá trị mình truyền vào có thể là mảng nên mình cần check xem có phải là mảng không nếu đúng thì thực hiện trong if
        if iterable[0].is_a?(String) #Trong đề bài đưa ra là có mảng chuỗi và có mảng là số , mình check xem giá trị đầu tiên là thuộc chuỗi hay số để tiếp tục xử lí
            return iterable.join('').squeeze.chars # Nếu mảng thì ta sẽ dùng join để chuyển nó sang 1 chuỗi sau đó dùng option squeeze để gộp các kí tự giống nhau liền kề tiếp tiếp theo ta trả về kiểu mảng
        else
            return iterable.join('').squeeze.chars.map(&:to_i) # Ở đây nếu mảng là kiểu mảng số thì tương tự như trên nhưng bước cuối dùng thêm option map để đổi cái kí tự trong mảng thành kiểu số nguyên bằng option to_i thoả yêu cầu đề bài
        end
    else
        return iterable.squeeze.chars # còn nếu đầu vào là kiểu chuỗi thì ta lọc giá trị giống nhau liền kề và chuyển nó thành mảng trả lại kết quả theo yêu cầu
    end
end

puts unique_in_order('AAAABBBCCDAABBB')
puts unique_in_order([1,2,3])
puts unique_in_order(['a','b','c','c','c','a','a'])