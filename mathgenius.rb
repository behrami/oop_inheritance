require_relative "multilinguist.rb"

class MathGenius < Multilinguist

  def initialize
    super
  end

  def report_total(array_list)

    temp_sum=0
    array_list.each do |num|
      temp_sum+=num
    end
    say_in_local_language( "The total is #{temp_sum}")
  end

end

#############
me= MathGenius.new
p me.report_total([1,2,3])
me.travel_to("India")
p me.report_total([3, 44, 77])
