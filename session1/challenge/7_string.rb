# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  pirate = string.split('')
  pirate.delete(' ')
  arr=''
  pirate.each_with_index do |str,index|
    if ['r','R'].include?(str)
      arr << pirate[index.next] if pirate[index.next] != nil
    end
  end
  return arr
end
