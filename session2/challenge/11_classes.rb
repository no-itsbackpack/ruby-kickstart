# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
class BeerSong
  attr_accessor :print_song
  def initialize(param)
    if param < 0
      @num_of_bottles = 0
    elsif param > 99
      @num_of_bottles = 99
    else
      @num_of_bottles = param
    end 
  end

  def number_in_english
    {
      '0' => 'zero',
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine',
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen',
      '20' => 'twenty',
      '30' => 'thirty',
      '40' => 'forty',
      '50' => 'fifty',
      '60' => 'sixty',
      '70' => 'seventy',
      '80' => 'eighty',
      '90' => 'ninety'
    }
  end

  def determine_number(number)

    if number.length == 1
      return number_in_english[number]

    else 
      if number[0] == '1'
        return number_in_english[number]

      elsif number[1] == '0'
        return number_in_english[number]

      else
        tens = number[0].to_i * 10
        tens = number_in_english[tens.to_s] +'-'+  number_in_english[number[1]]
        return tens
      end
    end

  end

  def bottle(english_number)
    puts "#{english_number.capitalize } bottle of beer on the wall,"
    puts "#{english_number.capitalize } bottle of beer,"
    puts "Take one down, pass it around,"
    puts 'Zero bottles of beer on the wall.' 
  end

  def bottles(english_number)
    puts "#{english_number.capitalize } bottles of beer on the wall,"
    puts "#{english_number.capitalize } bottles of beer,"
  end

  def print_song
   if @num_of_bottles != 0
     (@num_of_bottles).downto(1).each do |number|

       english_number = determine_number(number.to_s) 
       if number == 1
         bottle(english_number)
         break
       end

       bottles(english_number)    

       puts "Take one down, pass it around,"

       one_less = number - 1
       english_number = determine_number((one_less).to_s)
       puts "#{english_number.capitalize} bottle of beer on the wall." if one_less == 1
       puts "#{english_number.capitalize} bottles of beer on the wall." if one_less > 1
     end

   else
     puts ""
   end

  end

end

BeerSong.new(99).print_song