class User < ApplicationRecord
    has_many :interests
    has_many :skills, class_name: 'Skil'
  end
  
  class Interest < ApplicationRecord
    has_many :users
  end
  
  class Skill < ApplicationRecord
    has_many :users
  end
  
  #In appliaction we are using ActiveInteraction gem => https://github.com/AaronLasseigne/active_interaction
  class Users::Create < ActiveInteraction::Base
    hash :params do
      string :name, desc: 'name of user'
      string :patronymic, desc: 'patronymic of user'
      string :email, desc: 'email of user'
      integer :age, desc: 'age of user'
      string :nationality, desc: 'nationality of user'
      string :country, desc: 'country of user'
      string :gender, desc: 'gender of user'
    end
  
    validate  :need_exit?

    def need_exit?
      # должно работать, понять почему при отладке нет - задала вопрос на стковерфлоу - провреить
      User.where(email: params['email']) || params['age'] <= 0 || params['age'] > 90 || params['gender'] != 'male' || params['gender'] != female
    end

    def execute  
      user_full_name = "#{params['surname']} #{params['name']} #{params['patronymic']}"
      user_params = params.except(:interests)
      user = User.create(user_params.merge(full_name: user_full_name))

      user.interests << Interest.where(name: params['interests'])

      user.skills << Skill.where(name: params['skills'].split(','))
    end
  end
  
  
  #User object in database
#   name string
#   surname string
#   patronymic string
#   fullname string
#   email string
#   age integer
#   nationality string
#   country string
#   interests array
#   gender string
#   skills string
  
  #Interest object in database
#   name string
  #Skil oject in database
#   name string