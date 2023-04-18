class Api::PokemonController < ApplicationController
    def types
        puts (TYPES)
        render json: TYPES
    end

    def index
    end

    def show
    end

    def poke_params
        params.require(:pokemon).permit()
    end
end
