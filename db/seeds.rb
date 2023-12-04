puts 'Gerando balls...'

5.times do |i|
  Ball.create(
    name: ["football", "rugby", "basket"].sample ,
    game: "game relacionado"
    )
end

puts 'balls gerados com sucesso!'