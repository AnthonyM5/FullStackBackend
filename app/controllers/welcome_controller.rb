class WelcomeController < ApplicationController

    def index
        render json: {"message": "Hello World"}
    end
    
end
