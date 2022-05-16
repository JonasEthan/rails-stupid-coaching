class AsksController < ApplicationController
  def index
  end

  def answer
    params[:question]
    @answer = 'Silly Question, get dressed and go to work!' if params[:question].include?('?')
    @answer = 'I do\'t care, get dressed and go to work!' unless params[:question].include?('?')
    @answer = 'Good!' if params[:question].downcase == 'i am going to work'
  end
end
