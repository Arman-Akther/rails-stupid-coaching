class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if params[:question] == "I am going to work"
      @coach = 'Great! 🙋‍♂️'
    elsif params[:question].include? '?'
      @coach = 'silly question 🤦‍♂️'
    else
      @coach = "I don't care, get dressed and go to work! 🙄"
    end
  end
end
