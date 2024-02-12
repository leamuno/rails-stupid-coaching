class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end
end

def coach(question)
  if question == "I am going to work"
    return "Great!"
  elsif question[-1] == "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
