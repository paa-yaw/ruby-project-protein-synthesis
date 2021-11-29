require 'genetic_constants'

module DnaWorker
    def self.print_complementary_base_pairing(sequence)
        sequence = sequence.map(&:to_sym)

        mRNA_sequence = sequence.map { |base| GeneticConstants.nitrogenous_base_pairs[base] }

        mRNA_sequence
    end

    
    def self.initiate_translation(codon_collection)
      
      puts "intiating translation of mRNA sequence"
      puts ""
      puts "resulting amino acid sequence..."
      puts ""
      
      codon_collection.each do |codon|
        if GeneticConstants.genetic_code[codon.join("")].nil?
          next
        elsif GeneticConstants.genetic_code[codon.join("")] == "STOP"
          print "#{GeneticConstants.genetic_code[codon.join("")]}"
          puts ""
          puts "=>translation of mRNA sequence terminated.<="
          break
        else
          print "#{GeneticConstants.genetic_code[codon.join("")]}---"
        end
      end
      print "STOP"
      puts ""
    end
  end
  
  