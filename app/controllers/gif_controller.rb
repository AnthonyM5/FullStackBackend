class GifController < ApplicationController
require "uri"
require "net/http"
require 'json'

API_KEY = 'GxcROPu9p4Ai7eSk98Ks0EMrdjbtZ9nA'
API_ROOT = 'https://api.giphy.com/v1/gifs/search?q='
RANDOM = 'https://api.giphy.com/v1/gifs/random?'

# api.giphy.com/v1/gifs/search?q=alright&api_key=GxcROPu9p4Ai7eSk98Ks0EMrdjbtZ9nA


    def random
        resp = Net::HTTP.get_response(URI.parse(RANDOM + "api_key=#{API_KEY}"))
        buffer = resp.body
        result = JSON.parse(buffer)
        render json: result
    end


    def search_params
        params.permit(:query)
    end

    def create 
 
    end

end
