class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @search = params[:question]
    @answer = coach_answer(@search)
  end

  def coach_answer(search)
    if search.downcase == "i am going to work"
      "Great!"
    elsif search.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
