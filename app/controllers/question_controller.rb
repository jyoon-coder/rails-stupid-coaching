class QuestionsController < ApplicationController::Base

  def submit_question
    redirect_to '/answer?question=' + params[:question]
  end

  def show_answer
    question = params[:question]
    @answer = compute_answer(question)
  end

  def compute_answer(question)
    if question == "I am going to work"
      puts("Great!")
    elsif question.end_with?("?")
      puts ("Silly question, get dressed and go to work!")
    else
      puts ("I don't care, get dressed and go to work!")
    end
  end
end
