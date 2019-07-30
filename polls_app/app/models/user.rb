# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#

class User < ApplicationRecord

  # do we need this?
  has_many :answer_choices,
  foreign_key: :user_id,
  class_name: :AnswerChoice

  has_many :authored_polls,
  foreign_key: :author_id,
  class_name: :Poll

  has_many :responses,
  foreign_key: :user_id,
  class_name: :Response

end
