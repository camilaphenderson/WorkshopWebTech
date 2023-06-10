class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def show
        @tweet = Tweet.find_params[:id]         
    end
end