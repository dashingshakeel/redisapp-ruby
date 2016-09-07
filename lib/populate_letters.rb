class PopulateLetters
  attr_reader :letters 
  def initialize depth=1
     @letters=[]
     @depth=depth
  end
  def execute
    spawn_letter ""
  end
  def spawn_letter prefix
    "A".upto "Z" do |letter|
      new_letter=prefix + letter
      letters << new_letter
      spawn_letter new_letter if new_letter.length < @depth
     end
  end
end