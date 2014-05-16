# spec/factories/contacts.rb

#   require 'faker'


FactoryGirl.define  do 
  factory :contact do |f| 
    f.userid  "5"
    f.password "1234567"
    f.name "gxvxghqewexewx"
    f.gender "male"
    f.email "hbghxvbghb@gmail.com"
    f.mobile "7878787878"
    f.city "hyderabad"
    f.country  "india"
    f.age "55"
    f.remember_me "yes"  
    # genders = ['male', 'female']
    # f.userid { Faker::Number.digit} 
    # f.password { Faker::Internet.password(5)} 
    # f.name { Faker::Name.name } 
    # f.gender { Faker::Name.genders } 
    # f.email { Faker::Internet.email } 
    # f.mobile { Faker::Number.number(10) } 
    # f.city { Faker::Address.city_prefix } 
    # f.country { Faker::Address.country } 
    # f.age { Faker::Number.number(2) } 
    # f.remember_me { Faker::Number.digit } 
    end 
  end
    