module DnaReplication
  def initialize
  	@nitrogenous_base_pairs = {
  		:A => :U, 
  		:T => :A,
  		:G => :C,
  		:C => :G
  	}
  end

  def print_pairing(base)
  	base = base.to_sym
  	if @nitrogenous_base_pairs.include?(base)
  	  return @nitrogenous_base_pairs[base].to_s
  	else
  	  puts "#{base} is not a valid base in the mRNA sequence"
  	end
  end

  def sequence
  	@new_input = @input.split("")
  	@new_input.each do |base|
  	  @dna_sequence << base
  	end
  end

  def complementary_sequence
  	sequence
  	@dna_sequence.each do |i|
      @mRNA_sequence << print_pairing(i)
  	end
  	  @mRNA_sequence.join("")
      return nil
  end

   def loop_and_delete_again
    @input.each do |element|
      if @keys.include?(element)
        next
      else
        puts "#{@input.inspect}"
        loop_and_delete
      end
    end
  end

  def check?
    @input.any? do |i|
     if @keys.include?(i)
     else
       loop_and_delete_again 
     end
   end
  end

  def loop_and_delete
    @input.each do |element|
     if @keys.include?(element)
       next
     else
       @input.delete(element)
       # puts "deleted => #{element}"
       # puts "array length => #{@input.length}"
     end
   end
   check? 
  end

  def excise_unwanted_input
   @keys = []
   @nitrogenous_base_pairs.each_key do |key|
     @keys << key.to_s
   end
   loop_and_delete
   @input = @input.join("")
  end

  def output_sequence
    puts ""
    puts "input DNA sequence =>          #{@input}"
    puts "complementary mRNA sequence => #{@mRNA_sequence.join("")}" 
    puts ""
    @mRNA = @mRNA_sequence.join("")
  end
end


