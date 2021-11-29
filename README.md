# ruby-project-protein-synthesis
this program reads and synthesizes complementary mRNA sequence, and then translates mRNA sequence to make a chain of amino acids

run gem install protein_maker and open up irb
type in require 'protein_maker' and the following:

protein_maker = ProteinMaker.new (this will initialize the object with a default dna sequence)
then,
protein_maker.synthesize_amino_acid_strand
