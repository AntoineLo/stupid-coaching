class CoachingController < ApplicationController

  def answer
    get_question
    if @question.downcase == "i am going to work right now!"
      @answer = 'GOOD'
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
    get_question
  end

  private

  def get_question
    @question = params[:question]
  end
end
