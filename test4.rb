require 'active_interaction'
require 'byebug'

# # class Square < ActiveInteraction::Base
# #   float :x
# #   string :name

# #   validates :name,
# #     presence: true


# #   def execute
# #     x**2
# #   end
# # end


# # byebug
# # outcome = Square.run(x: 'two point one')
# # outcome.valid?
# # # => nil
# # outcome.errors.messages
# # # => {:x=>["is not a valid float"]}

# # outcome = Square.run(x: 2.1)
# # outcome.valid?
# # # => true
# # outcome.result
# # # => 4.41


# # class Cow
# #     def moo
# #       'Moo!'
# #     end
# #   end
  
#   class ObjectInteraction < ActiveInteraction::Base
  
#     # hash :params,
#     # default: {} do
#     #   string :name,
#     #     default: nil
#     # end
#     # integer :age
#     hash :params do
#       string :name, desc: 'name of user'
#       string :patronymic, desc: 'patronymic of user'
#       string :email, desc: 'email of user'
#       integer :age, desc: 'age of user'
#       string :nationality, desc: 'nationality of user'
#       string :country, desc: 'country of user'
#       string :gender, desc: 'gender of user'
#     end


#     # unless: Proc.new { |a| a.password.blank? }

#     # validates :age, presence: true, if: Proc.new { |a| a==5 }

#     # validates :params, presence: true, if: Proc.new { |a| puts a ; byebug }

#     # validates :params, presence: true, :if =>  :need_exit?
#     # validate  :need_exit?/

#     def need_exit?
#       1
#       byebug
#       params['age'] <= 0 || params['age'] > 90 || params['gender'] != 'male' || params['gender'] != female
#       false
#     end


#     def execute
#       puts params
#       # puts params[:a]
#       # puts params[:b]
#     end
#   end
  
#   # byebug
#   # res=ObjectInteraction.run!(age: 7)
#   res=ObjectInteraction.run!(params: {name: 'a', patronymic: 'x', email: 'zz', age: 7, nationality: 'l', country: 's', gender: 'b' })




#   # class Sleep < ActiveInteraction::Base
#   #   # object :user
#   #   time :slept_at, default: 1

#   #   validate :validate_uesr

#   #   def execute
#   #     # sleep = user.sleeps.new(start_at: slept_at)

#   #     # unless sleep.save
#   #     #   errors.merge(sleep.errors)
#   #     # end

#   #     # sleep
#   #     puts 1
#   #     1
#   #   end

#   #   private

#   #   def validate_uesr
#   #     # errors.add(:user, :is_sleeping) if user.sleeping?
#   #     false
#   #   end
#   # end

#   # res = Sleep.run
#   # byebug
#   # 1
  

  
class Sleep < ActiveInteraction::Base

  validate :validate_u

  def execute
    puts 2
    1
  end

private

def validate_u
  false
end
end

res = Sleep.run
puts res.result
puts res.valid?
puts res.errors.messages