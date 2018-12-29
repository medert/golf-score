score_card =[
  {5 => 7},
  {4 => 5},
  {3 => 3},
  {4 => 4},
  {4 => 4},
  {3 => 2},
  {4 => 5},
  {5 => 5},
  {4 => 5},
  {5 => 7},
  {4 => 4},
  {4 => 4},
  {3 => 3},
  {4 => 5},
  {4 => 5},
  {4 => 4},
  {3 => 3},
  {5 => 6},
]

strokes = 0
par = 0

score_card.each do |elem|
   strokes += elem.values.reduce(:+)
   par += elem.keys.reduce(:+)
end

puts "Total Strokes: #{strokes}"
puts "Total Par: #{par}"

if strokes >= par
   puts "You are #{strokes - par} over par"
else
   puts "You are #{par - strokes} under par"
end
