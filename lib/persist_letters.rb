class PersistLetters

  def execute number

    PopulateLetters.new(number).execute do |letter|
      Letter.create! name: letter, description: <<EOF, scroe: Random.rand(1001)
this is description
EOF
    end
  end
end