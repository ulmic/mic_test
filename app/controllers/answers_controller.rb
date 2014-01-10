class AnswersController < ApplicationController
  def new
    @question = Question.find params[:id]
    @answer = Answer.new
  end

  def create
    @answer = Answer.new params[:answer]
    if @answer.save
      if @answer.question.next
        redirect_to new_answer_path(@answer.question.next), flash: :success
      else
        redirect_to success_users_path
      end
    else
      render action: :new, flash: :error
    end
  end
end
