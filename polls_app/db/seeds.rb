# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
Response.destroy_all
AnswerChoice.destroy_all


user1 = User.create!(username: 'funnyboy')
user2 = User.create!(username: 'spaghettimonster')
polls = Poll.create!(title: 'Lifestyle Choices', user1.id)

question1 = Question.create!(text: 'How do you feel about plant-based canned tuna?')
question2 = Question.create!(text: 'How often do you get your hair cut?')

answer_choice1 = AnswerChoices.create!()


