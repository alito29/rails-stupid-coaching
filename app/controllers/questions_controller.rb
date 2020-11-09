class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    @question = ask
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == 'I am going to work right now!'
      'great'
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
