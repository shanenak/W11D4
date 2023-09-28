@pokemons.each.with_index do |pokemon, index|
    @pokemons[index].image_url = "/images/unknown.png" if !@pokemons[index].captured
end

json.array! @pokemons, :id, :number, :name, :image_url, :captured
