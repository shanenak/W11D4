# {
#     "imageUrl": "/images/pokemon_snaps/1.svg",
#     "id": 1,
#     "number": 1,
#     "attack": 49,
#     "defense": 49,
#     "name": "Bulbasaur",
#     "type": "grass",
#     "moves": [
#       "tackle",
#       "vine whip"
#     ],
#     "captured": true,
#     "createdAt": "2020-12-16T01:17:24.119Z",
#     "updatedAt": "2020-12-16T01:17:24.119Z"
#   }

json.extract! @pokemon, :image_url, :id, :number, :attack, :defense, :name, :poke_type
json.moves @pokemon.moves.map {|move| move.name}
# json.set! moves do |move|
#     move.name
# end
# # end