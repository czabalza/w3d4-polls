# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.destroy_all
# Poll.destroy_all
# Question.destroy_all
# AnswerChoice.destroy_all
# Response.destroy_all
User.create!(:user_name => 'user1')
User.create!(:user_name => 'user2')
User.create!(:user_name => 'user3')
User.create!(:user_name => 'user4')
User.create!(:user_name => 'user5')
Poll.create!(:title => 'Survey1', :author_id => 1)
Poll.create!(:title => 'Survey2', :author_id => 1)
Question.create!(:text => "Q1",:poll_id =>2)
Question.create!(:text => "Q2",:poll_id =>2)
AnswerChoice.create!(:text => 'a',:question_id => 1)
AnswerChoice.create!(:text => 'b',:question_id => 1)
AnswerChoice.create!(:text => 'c',:question_id => 1)
AnswerChoice.create!(:text => 'd',:question_id => 1)
AnswerChoice.create!(:text => 'a',:question_id => 2)
AnswerChoice.create!(:text => 'b',:question_id => 2)
AnswerChoice.create!(:text => 'c',:question_id => 2)
AnswerChoice.create!(:text => 'd',:question_id => 2)
Response.create!(:answer_choice_id => 4 , :user_id => 2, :question_id =>1)
Response.create!(:answer_choice_id => 4 , :user_id => 3, :question_id =>1)
Response.create!(:answer_choice_id => 1 , :user_id => 4, :question_id =>1)
Response.create!(:answer_choice_id => 1 , :user_id => 5, :question_id =>1)
Response.create!(:answer_choice_id => 1 , :user_id => 2, :question_id =>2)
puts User.find_by_id(2).completed_polls
