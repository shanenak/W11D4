@pokemons.each do |pokemon|
    json.extract! pokemon, :id, :number, :name, :imageUrl, :captured
end