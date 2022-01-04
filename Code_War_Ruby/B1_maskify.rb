def maskify(cc)
    if cc.length > 4
        cc[0...(cc.length-4)] = "#"*(cc.length-4)
        puts cc
    else
        puts cc
    end
end

cc1 = "Skippy"
maskify(cc1)

=begin
maskify('4556364607935616') # should return '############5616'
maskify('64607935616')      # should return '#######5616'
maskify('1')                # should return '1'
maskify('')                 # should return ''

# "What was the name of your first pet?"
maskify('Skippy')                                   # should return '##ippy'
maskify('Nananananananananananananananana Batman!') # should return '####################################man!'   
=end
