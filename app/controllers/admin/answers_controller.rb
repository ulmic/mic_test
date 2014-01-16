class Admin::AnswersController < Admin::ApplicationController
  def index
    @questions = Question.all
    @answers = []
    @questions.each do |question|
      answer = question.answers.where("user_id = ?", params[:id]).first
      if answer
        @answers << answer
      end
    end
  end
end
