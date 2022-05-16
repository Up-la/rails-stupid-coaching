class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_anwser = coach_answer(params[:question])
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == 'i am going to work'
      'Great!'
    elsif your_message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
