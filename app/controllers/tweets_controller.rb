require 'oembed'

class TweetsController < ApplicationController
    def initialize
        OEmbed::Providers.register(OEmbed::Providers::Twitter)
        OEmbed::Providers::Twitter.endpoint += "?omit_script=true"
        super
    end

    def index
        @tweets = Tweet.all
    end

    def show
        @tweet = Tweet.find(params[:id])
        @tweet_embedded = OEmbed::Providers.get(@tweet.url).html
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)

        if @tweet.save
            redirect_to @tweet
        else
            render 'new'
        end
    end

    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy

        redirect_to tweets_path
    end

    private
        def tweet_params
            params.require(:tweet).permit(:url)
        end
end
