module GeneticCode
  def code_definition
    predined_code
  end  

  def predined_code
    @genetic_code = {

      "UUU" => "Phe",
      "UUC" => "Phe",
      "UUA" => "Leu",
      "UUG" => "Leu",
      "CUU" => "Leu",
      "CUC" => "Leu",
      "CUA" => "Leu",
      "CUG" => "Leu",
      "AUU" => "Ile",
      "AUC" => "Ile",
      "AUA" => "Ile",
      "AUG" => "Met", 
      "GUU" => "Val",
      "GUC" => "Val",
      "GUA" => "Val",
      "GUG" => "Val",
      "UCU" => "Ser",
      "UCC" => "Ser",
      "UCA" => "Ser",
      "UCG" => "Ser",
      "CCU" => "Pro",
      "CCC" => "Pro",
      "CCA" => "Pro",
      "CCG" => "Pro",
      "ACU" => "Thr",
      "ACC" => "Thr",
      "ACA" => "Thr",
      "ACG" => "Thr",
      "GCU" => "Ala",
      "GCC" => "Ala",
      "GCA" => "Ala",
      "GCG" => "Ala",
      "UAU" => "Tyr",
      "UAC" => "Tyr",
      "UAA" => "STOP",
      "UAG" => "STOP",
      "CAU" => "His",
      "CAC" => "His",
      "CAA" => "Gln",
      "CAG" => "Gln",
      "AAU" => "Asn",
      "AAC" => "Asn",
      "AAA" => "Lys",
      "AAG" => "Lys",
      "GAU" => "Asp",
      "GAC" => "Asp",
      "GAA" => "Glu",
      "GAG" => "Glu",
      "UGU" => "Cys",
      "UGC" => "Cys",
      "UGA" => "STOP",
      "UGG" => "Trp",
      "CGU" => "Arg",
      "CGC" => "Arg",
      "CGA" => "Arg",
      "CGG" => "Arg",
      "AGU" => "Ser",
      "AGC" => "Ser",
      "AGA" => "Arg",
      "AGG" => "Arg",
      "GGU" => "Gly",
      "GGC" => "Gly",
      "GGA" => "Gly",
      "GGG" => "Gly"
    }
    return nil
  end
  
  
  def print_mRNA_sequence
    @codon_collection = []
    @i = 0
    @mRNA_array = @mRNA.split("")
    (@mRNA_array.length/3).times do
       @codon_collection << Array.new(@mRNA_array[@i..(@i+2)])
       @i += 3  
    end
    return nil
  end

  def initiate_translation
    puts "intiating translation of mRNA sequence"
    puts ""
    puts "resulting amino acid sequence..."
    puts ""

    @codon_collection.each do |codon|
      if @genetic_code[codon.join("")].nil?
        next
      elsif @genetic_code[codon.join("")] == "STOP"
        print "#{@genetic_code[codon.join("")]}"
        puts ""
        puts "=>translation of mRNA sequence terminated.<="
        break
      else
        print "#{@genetic_code[codon.join("")]}---"
      end
    end
    print "STOP"
    puts ""
  end
end
