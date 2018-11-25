ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}
]

tally = {}

ballots.each do |ballot|
  ballot.each do |value, vote|
    if tally[vote]

    else tally[vote] = 0
    end 
    if value == 1
      tally[vote] += 3
    elsif value == 2
      tally[vote] += 2
    else value == 3
      tally[vote] += 1
    end
  end
end

p tally
