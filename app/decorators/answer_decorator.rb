class AnswerDecorator < Draper::Decorator
  delegate_all

  def check
    if model.question.variants.any?
      if model.variant_id == model.question.variants[model.question.right_answer_id - 1].id
        :right
      else
        :wrong
      end
    else
      :not
    end
  end

end
