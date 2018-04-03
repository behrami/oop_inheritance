require_relative "multilinguist.rb"

class QuoteCollector < Multilinguist

  @@quotes = []

  def initialize
    super
  end

  def memorize(quote)
    @@quotes.push(quote)
  end

  def translate(quote)
    say_in_local_language(quote)
  end

  def randomQuote
    say_in_local_language(@@quotes.sample)
  end

end

######################

someone=QuoteCollector.new
someone.memorize("This is a test phrase")
someone.memorize("saying something")
p @@quotes
randomtest=someone.randomQuote
p someone.translate(randomtest)
