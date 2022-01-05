def DNA_strand(dna)
    #your code here
    for i in 0..dna.length-1
        case dna[i]
        when 'A'
             dna[i] = 'T'
        when 'T'
             dna[i] = 'A'
        when 'G'
             dna[i] = 'C'
        when 'C'
             dna[i] = 'G'
        else 
            "error"
        end
    end
    return dna
end


# def DNA_strand(dna)
#     dna.tr('ATCG','TAGC')
# end

puts DNA_strand("ATTGC")
