class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def show
        @tweet = Tweet.find params[:id]
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new tweets_params
        tweet.user= current_user
        if tweet.save!
            redirect_to tweet, notice: 'Tweet guardado'
        else 
            render :new
        end
    end

    private

    def tweets_params
        params.require(:tweet).permit(:body)
    end
end