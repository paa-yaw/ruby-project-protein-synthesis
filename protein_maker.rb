require_relative 'DnaReplication'
require_relative 'the_genetic_code'

class SpeciesA
  include DnaReplication
  include GeneticCode
  include Enumerable

  def initialize
  	super()
  	# puts "input sequence"
  	@initial_input = "aATATGGGAAACCATTTGTCCACAAuafccgccggATTTTATATATATATATATATAA"
    puts "split input sequence into an array"
    @inputt = @initial_input.split("")
    @input = []
    @inputt.each do |i|
      @input << i.upcase
    end
    excise_unwanted_input
  	@dna_sequence = []
  	@mRNA_sequence = []
  	# @command = "y"
    @collection_of_mRNA_codons = []
  end
end

speciesA = SpeciesA.new
p speciesA.complementary_sequence
p speciesA.output_sequence
p speciesA.code_definition
p speciesA.print_mRNA_sequence
p speciesA.initiate_translation