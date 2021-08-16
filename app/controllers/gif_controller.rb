class GifController < ApplicationController
require "uri"
require "net/http"
require 'json'

API_KEY = '2Kn8AkarJbz0ZWJuW8HriollOr4p7HPx'
API_ROOT = 'https://api.giphy.com/v1/gifs/search?'
RANDOM = 'https://api.giphy.com/v1/gifs/random?'

SET = 'https://api.giphy.com/v1/gifs/search?api_key=2Kn8AkarJbz0ZWJuW8HriollOr4p7HPx&q=random'

# api.giphy.com/v1/gifs/search?q=alright&api_key=GxcROPu9p4Ai7eSk98Ks0EMrdjbtZ9nA
    def random
        resp = Net::HTTP.get_response(URI.parse(RANDOM + "api_key=#{API_KEY}"))
        buffer = resp.body
        result = JSON.parse(buffer)
        render json: result
    end

    def search 
        resp = Net::HTTP.get_response(URI.parse(API_ROOT + "api_key=#{API_KEY}" + "&q=#{params[:_json]}"))
        buffer = resp.body
        result = JSON.parse(buffer)
        render json: result
    end

    # def search_params
    #     params.permit(:term)
    # end

end
