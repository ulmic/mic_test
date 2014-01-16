module Admin::AnswersHelper
  def points(answers)
    points = 0
    answers.each do |answer|
      if answer.check == :right
        points += 1
      end
    end
    points
  end
end
