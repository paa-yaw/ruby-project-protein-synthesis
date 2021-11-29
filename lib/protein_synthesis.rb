require 'genetic_constants'
require 'dna_worker'


  class ProteinMaker
    include GeneticConstants
    include DnaWorker

    attr_accessor :input_sequence
    attr_reader :purified_array_sequence, :complementary_mRNA_sequence, :codon_collection, :amino_acid_strand

    def initialize(input_sequence="aATATGGGAAACCATTTGTCCACAAuafccgccggATTTTATATATATATATATATAA")
      @input_sequence = input_sequence
      @codon_collection = []
    end
    
    def synthesize_amino_acid_strand
        @purified_array_sequence = @input_sequence.split('')
        @purified_array_sequence = @purified_array_sequence.map(&:upcase)
        @purified_array_sequence.select! { |ele| GeneticConstants.nitrogenous_base_pairs.keys.include?(ele.to_sym) }

        @complementary_mRNA_sequence = DnaWorker.print_complementary_base_pairing(@purified_array_sequence)
        @complementary_mRNA_sequence.join('')

        @complementary_mRNA_sequence.each_slice(3) { |codon| @codon_collection << codon }
        DnaWorker.initiate_translation(@codon_collection)
    end
  end