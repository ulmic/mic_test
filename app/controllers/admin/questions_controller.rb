class Admin::QuestionsController < Admin::ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new params[:question]
    if @question.save
      redirect_to admin_questions_path, flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def update
    @question = Question.find params[:id]
    if @question.update_attributes params[:question]
      redirect_to admin_questions_path, flash: :success
    else
      render action: :edit, flash: :error
    end
  end

  def edit
    @question = Question.find params[:id]
  end

  def index
    @questions = Question.all
  end

  def destroy
    @question = Question.find params[:id]
    @question.destroy
    redirect_to admin_questions_path
  end
end
