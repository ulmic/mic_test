class QuestionsController < ApplicationController

  def index
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question }
    end
  end

  def foo
    for i in 1..18 do
      @user_answer = UserAnswer.new("user_id" => $user_id, "question_id" => i, "answer" => params[i.to_s]).save
    end
  end
end
