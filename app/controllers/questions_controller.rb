class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answer = coach_answer(params[:answer])
  end
  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      "Great"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
