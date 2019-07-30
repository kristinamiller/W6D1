# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  question_id :integer
#  user_id     :integer
#  text        :string
#

class AnswerChoice < ApplicationRecord

  belongs_to :question,
  foreign_key: :question_id,
  class_name: :Question

  # do we need this?
  belongs_to :user,
  foreign_key: :user_id,
  class_name: :User

  has_many :responses,
  foreign_key: :answer_choice_id,
  class_name: :Response


end
