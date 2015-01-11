class Admin::VariantsController < Admin::ApplicationController
  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new params[:variant]
    if @variant.save
      redirect_to admin_questions_path, flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def update
    @variant = Variant.find params[:id]
    if @variant.update_attributes params[:variant]
      redirect_to admin_questions_path, flash: :success
    else
      render action: :edit, flash: :error
    end
  end

  def edit
    @variant = Variant.find params[:id]
  end

  def index
    @variants = Variant.all
  end

  def destroy
    @variant = Variant.destroy
    @variant.destroy
    redirect_to :root
  end
end
