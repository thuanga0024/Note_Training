def disemvowel(str)
    nguyenam = ['u','e','o','a','i','U','E','O','A','I']
    nguyenam.each do |abc|
        str.gsub!(abc,'')
    end
    puts str
end

disemvowel("This website is for losers LOL!")

#def disemvowel(str)
#    str.delete('aeiouAEIOU')
#end