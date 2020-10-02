class Api::V1::VotesController < ApplicationController
  def create
    joke_id = params['joke_id']

    joke = JokesApiService.post_create_upvotes(joke_id)
    if joke['content']
      render json: { joke: joke, message: "Thank's for your vote!" }
    else

      render json: { error_message: "Sorry, we are not that funny, we don't have that joke!" }
    end
  end
end