# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer
#  user_id          :integer
#

class Response < ApplicationRecord

  belongs_to :answer_choice,
  foreign_key: :answer_choice_id,
  class_name: :AnswerChoice

  belongs_to :respondent,
  foreign_key: :user_id,
  class_name: :User

end
