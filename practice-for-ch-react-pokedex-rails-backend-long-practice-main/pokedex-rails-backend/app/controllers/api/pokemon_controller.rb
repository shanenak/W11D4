class Api::PokemonController < ApplicationController
    def types
        all_types = [
        "fire",
        "electric",
        "normal",
        "ghost",
        "psychic",
        "water",
        "bug",
        "dragon",
        "grass",
        "fighting",
        "ice",
        "flying",
        "poison",
        "ground",
        "rock",
        "steel"
        ]
        render json: all_types
    end

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        render :show
    end

end
